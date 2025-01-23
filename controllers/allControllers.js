const horariosModel = require('../models/horariosModel');
const agendamentosModel = require('../models/agendamentosModel');

const utils = require('../utils/utils');

const userLastMessage = {};

var stage = {}
var info = {}

let horariosDisponiveisArray = [];


async function menuInitBot(sock, message, msg_user) {
    const usuario_atual = message.key.remoteJid;  // Certifique-se de que `message.from` seja o identificador correto

    // Verifica se stage[usuario_atual] existe, caso contrário inicializa
    if (!stage[usuario_atual]) {
        stage[usuario_atual] = 0;  // Inicialize com o valor inicial desejado
    }

    

    const isFirstMessageToday = await utils.isFirstMessageToday(usuario_atual, userLastMessage);
    if (isFirstMessageToday == false) {
        return;
    } else {
        // Se for a primeira mensagem do dia, envia a resposta inicial
        // Inicializa o objeto info para o usuário
        info[usuario_atual] = {
            barbeiro: '', // BRUNO | WALLYSON
            nome: '', // OBRIGATORIO
            servico: '', // OBRIGATORIO
            data: '', // OBRIGATORIO
            horario: '' // OBRIGATORIO
        }
        await sock.sendMessage(usuario_atual, {
            text: '👋 Olá! Seja Bem Vindo!\nVamos agendar seu serviço? ✂️💇‍♂️\n\n🗓️ Escolha uma das opções abaixo para começar:\n\n📅 Agendar um serviço - 1\n🔄 Cancelar um agendamento - 2\n💬 Falar com um atendente - 3'
        });
        userLastMessage[usuario_atual] = utils.isFirstMessageToday(usuario_atual, userLastMessage);
        stage[usuario_atual] = 1;
    }
    return;
}

async function returnMenuBot(sock, message, msg_user) { // VOLTAR PARA O MENU
    const usuario_atual = message.key.remoteJid;

    // Reinicializa o estado do usuário
    stage[usuario_atual] = 0;
    info[usuario_atual] = {
        barbeiro: '', // BRUNO | WALLYSON
        nome: '', // OBRIGATORIO
        servico: '', // OBRIGATORIO
        data: '', // OBRIGATORIO
        horario: '' // OBRIGATORIO
    }
    await sock.sendMessage(usuario_atual, {
        text: '👋 Olá! Seja Bem Vindo!\nVamos agendar seu serviço? ✂️💇‍♂️\n\n🗓️ Escolha uma das opções abaixo para começar:\n\n📅 Agendar um serviço - 1\n🔄 Cancelar um agendamento - 2\n💬 Falar com um atendente - 3'
    });
    stage[usuario_atual] = 1;
    return;
}

async function optionAgendarORCabelo(sock, message, msg_user) { // QUANDO DIGITAM 1 -> AGENDAR OU ESCOLHER CABELO
    const usuario_atual = message.key.remoteJid;

    const agendamentos = await agendamentosModel.getAgendamentosNumber(usuario_atual);
    let numero_de_agendamentos = 0;

    for(let i = 0;i < agendamentos.length;i++) {
        if(agendamentos[0].horarioAgendamento.toLocaleDateString('pt-BR') == new Date().toLocaleDateString('pt-BR')) {
            numero_de_agendamentos++;
        }
    }

    // Verifica o estágio do usuário
    if(stage[usuario_atual] == 1) {
        if(numero_de_agendamentos == 2) {
            await sock.sendMessage(usuario_atual, {
                text: '😭 Infelizmente não é possivel fazer mais de 2 agendamentos por dia!\n\nDigite 0 para voltar ao inicio!'
            });
            return;
        }
        await sock.sendMessage(usuario_atual, {
            text: 'Selecione qual serviço você deseja!\n\n1 - Cabelo\n2 - Barba\n3 - Sobrancelha\n4 - Acabamento (Pezinho)\n5 - Cabelo+Sobrancelha\n6 - Cabelo+Barba\n\nTABELA DE PREÇOS\n\nCabelo - R$ 25\nBarba - R$ 20\nSobrancelha - R$ 10\nAcabamento (Pezinho) - R$ 10\nCabelo+Sobrancelha - R$ 30\nCabelo+Barba - R$ 40\n\nDigite 0 para voltar ao inicio!'
        });
        stage[usuario_atual] = 2;
        return;
    }
    if(stage[usuario_atual] == 2) {
        selectService(sock, message, 1, msg_user);
        return;
    }
    
}
async function optionCancelarORBarba(sock, message, msg_user) { // QUANDO DIGITAM 2 -> CANCELAR OU ESCOLHER A BARBA
    const usuario_atual = message.key.remoteJid;

    if(stage[usuario_atual] == 1) {
        await sock.sendMessage(usuario_atual, {
            text: 'Ola, para cancelar o seu corte siga esses passos!\n\nEnvie seu ID do agendamento\n\nobs: ele está no final da mensagem de confirmação do agendamento!\n\nDigite 0 para voltar ao inicio!'
        });
        stage[usuario_atual] = 20;
        return;
    }
    if(stage[usuario_atual] == 2) {
        selectService(sock, message, 2, msg_user);
        return;
    }
}
async function optionAtendenteORSobrancelha(sock, message, msg_user) {
    const usuario_atual = message.key.remoteJid;

    if(stage[usuario_atual] == 1) {
        await sock.sendMessage(usuario_atual, {
            text: 'Ola, tudo bem? sua mensagem foi direcionada para o atendente!\n\n🕗 Pode levar um tempo para ele responder!\n\nDigite 0 para voltar ao inicio!'
        });
        stage[usuario_atual] = 30;
        return;
    }
    if(stage[usuario_atual] == 2) {
        selectService(sock, message, 3, msg_user);
        return;
    }
}
async function selectService(sock, message, service, msg_user) { // SELECIONANDO O SERVIÇO
    const usuario_atual = message.key.remoteJid;
    services = ['Cabelo','Barba','Sobrancelha','Acabamento (Pezinho)','Cabelo+Sobrancelha','Cabelo+Barba'];
    if(stage[usuario_atual] == 2) {
        info[usuario_atual].servico = services[service-1]; // preenchendo o serviço
        await sock.sendMessage(usuario_atual, {
            text: 'Agora selecione um dos nossos barbeiro!\n\nB - Bruno\nW - Wallyson\n\nDigite 0 para voltar ao inicio!'
        });
        stage[usuario_atual] = 3;
        return;
    }
}
async function selectBarber(sock, message, barber, msg_user) { // SELECIONA O BARBEIRO
    usuario_atual = message.key.remoteJid;
    barbers = ['Bruno', 'Wallyson'];
    if(stage[usuario_atual] == 3) {
        info[usuario_atual].barbeiro = barbers[barber-1];
        await sock.sendMessage(usuario_atual, {
            text: '📅 Digite a data do corte!\n\nNo formato: DD/MM/AAAA\nExemplo: 23/12/2024\n\nDigite 0 para voltar ao inicio!'
        });
        stage[usuario_atual] = 4;
        return;
    }
}
async function receiveDate(sock, message, msg_user) { // RECEBE A DATA
    const usuario_atual = message.key.remoteJid;

    // Obtemos a data atual no formato YYYY-MM-DD
    const dataAtual = new Intl.DateTimeFormat('pt-br', { timeZone: 'America/Sao_Paulo' })
        .format(new Date())
        .split('/')
        .reverse()
        .join('-');

    // Verifica se o stage e a data são válidos
    if (utils.isDate(msg_user) && stage[usuario_atual] == 4) {
        const dataRecebida = utils.converterData(msg_user); // Converte a data recebida
        if (new Date(dataRecebida) < new Date(dataAtual)) { // Se a data recebida for no passado
            await sock.sendMessage(usuario_atual, {
                text: '🚫 A data escolhida não pode ser uma data passada. Por favor, escolha uma data futura.'
            });
            return;
        }
        if(new Date(dataRecebida).getDay() == 0) { // Se a data cair em um Domingo
            await sock.sendMessage(usuario_atual, {
                text: '😭 Desculpe, não trabalhamos no Domingo!\n\nDigite 0 para voltar ao inicio!'
            });
            return;
        }

        info[usuario_atual].data = dataRecebida; // INSERIR DATA

        // MOSTRAR OS HORARIOS DISPONIVEIS
        const diasSemana = ['Domingo','Segunda','Terca','Quarta','Quinta','Sexta','Sabado'];
        let horarios = {};
        let horariosDisponiveis = '👏 Muito Bem!\n\n Horários disponíveis: \n';
        let horariosIndisponiveis = [];

        if(info[usuario_atual].barbeiro == 'Bruno') {
            horarios = await horariosModel.getHorariosBruno(diasSemana[new Date(info[usuario_atual].data).getDay()]);
        } else if(info[usuario_atual].barbeiro == 'Wallyson') {
            horarios = await horariosModel.getHorariosWallyson(diasSemana[new Date(info[usuario_atual].data).getDay()]);
        }

        const agendamentos = await agendamentosModel.getAgendamentos(dataRecebida, info[usuario_atual].barbeiro);
        for(let i = 0;i < agendamentos.length;i++) {
            horariosIndisponiveis.push(agendamentos[i].time);
        }

        // filtrar os horarios disponiveis e removendo os indisponiveis
        horariosDisponiveisArray = horarios[0].horarios.filter(horario => !horariosIndisponiveis.includes(horario));
        if(horariosDisponiveisArray.length == 0) {
            await sock.sendMessage(usuario_atual, {
                text: '😭 Desculpe infelizmente não tem nenhum horarios disponivel para essa data!'
            });
            return;
        }

        horariosDisponiveisArray.forEach((horario, index) => {
            horariosDisponiveis += `🕗 ${horario}\n`;
        });

        await sock.sendMessage(usuario_atual, {
            text: horariosDisponiveis + '\n\nDigite o seu horario exatamente igual!\n\nDigite 0 para voltar ao inicio!'
        });
        stage[usuario_atual] = 5;
        return;
    }
}
async function receiveTime(sock, message, msg_user) { // RECEBE A HORA
    const usuario_atual = message.key.remoteJid;
    if(horariosDisponiveisArray.includes(msg_user) && stage[usuario_atual] == 5) {
        info[usuario_atual].horario = msg_user;
        await sock.sendMessage(usuario_atual, {
            text: '👏 Bela escolha!\n\nAgora para confirmar seu agendamento: \n\n📅 '+info[usuario_atual].data+'\n🕑 '+info[usuario_atual].horario+'\n\nDigite seu nome!\n\nDigite 0 para voltar ao inicio!'
        });
        stage[usuario_atual] = 6;
        return;
    }
}
async function receiveName(sock, message, msg_user) { // RECEBE O NOME E COLOCA AS INFORMAÇÕES NO BANCO DE DADOS
    const dataAtual = new Intl.DateTimeFormat('pt-br', { timeZone: 'America/Sao_Paulo' })
        .format(new Date())
        .split('/')
        .reverse()
        .join('-');

    const usuario_atual = message.key.remoteJid;
    if(stage[usuario_atual] == 6) {
        if(msg_user && msg_user.trim() !== "") {
            // INSERINDO AS INFORMAÇÕES NO BANCO DE DADOS
            info[usuario_atual].nome = msg_user;
            const agendamento = await agendamentosModel.setAgendamentos(
                info[usuario_atual].servico, // SERVIÇO
                info[usuario_atual].barbeiro, // BARBEIRO
                new Date(info[usuario_atual].data), // DATA
                info[usuario_atual].horario, // HORARIO
                info[usuario_atual].nome, // NOME
                usuario_atual, // NUMERO DO TELEFONE
                new Date(dataAtual) // DATA QUE O USUARIO AGENDOU
            );
            await sock.sendMessage(usuario_atual, {
                text: `🎉 Parabéns! Seu corte foi agendado!\n\nSegue aqui suas informações:\n\n👨 ${info[usuario_atual].nome}\n📅 ${info[usuario_atual].data}\n🕑 ${info[usuario_atual].horario}\n\nID do agendamento: ${agendamento.id}\n\nDigite 0 para voltar ao inicio!`
            });

            // RESETANDO AS INFORMAÇÕES
            stage[usuario_atual] = 0;
            info[usuario_atual] = {
                barbeiro: '', // BRUNO | WALLYSON
                nome: '', // OBRIGATORIO
                servico: '', // OBRIGATORIO
                data: '', // OBRIGATORIO
                horario: '' // OBRIGATORIO
            }
        } else {
            await sock.sendMessage(usuario_atual, {
                text: '🚫 Por favor, digite seu nome para confirmar o agendamento.'
            });
        }
        
        return;
    }
}
async function deleteAgendamento(sock, message, msg_user) {
    const usuario_atual = message.key.remoteJid;
    if(stage[usuario_atual] == 20 && utils.isUUID(msg_user) == true) {
        await agendamentosModel.deleteAgendamentoID(msg_user);
        await sock.sendMessage(usuario_atual, {
            text: '✅ Agendamento Cancelado com sucesso!\n\nDigite 0 para voltar ao inicio!'
        });
        stage[usuario_atual] = 1;
        return;
    } else if(stage[usuario_atual] == 20 && utils.isUUID(msg_user) == false) {
        await sock.sendMessage(usuario_atual, {
            text: '❌ O ID do agendamento está incorreto!\n\nDigite 0 para voltar ao inicio!'
        });
    }
}
module.exports = {
    menuInitBot,
    optionAgendarORCabelo,
    returnMenuBot,
    optionCancelarORBarba,
    selectService,
    optionAtendenteORSobrancelha,
    selectBarber,
    receiveDate,
    receiveTime,
    receiveName,
    deleteAgendamento
}