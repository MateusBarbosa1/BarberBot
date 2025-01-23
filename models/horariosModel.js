const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

async function getHorariosBruno(dia) {
    const horarios = await prisma.horariosBruno.findMany({ where: { diaSemana: dia } });
    return horarios;
}
async function getHorariosWallyson(dia) {
    const horarios = await prisma.horariosWallyson.findMany({ where: { diaSemana: dia } });
    return horarios;
}
async function updateHorariosBruno(antigo,novo,diaSemana) {
    const registros = await prisma.horariosBruno.findMany({
        where: {
            diaSemana: diaSemana,
            horarios: {
                has: antigo,
            },
        },
    });


    // Atualiza cada registro encontrado
    for (const registro of registros) {
        const horariosAtualizados = registro.horarios.map(horario =>
            horario === antigo ? novo : horario
        );

        // Realiza a atualização
        await prisma.horariosBruno.updateMany({
            where: {
                diaSemana: diaSemana,
                horarios: {
                    has: antigo, // Garante que só atualiza os registros com o horário antigo
                },
            },
            data: {
                horarios: horariosAtualizados, // Define os novos horários
            },
        });
    }
}
async function addHorarioBruno(horarioReferencia, horarioNovo, diaSemana) {
    // Busca o registro que contém o horário de referência
    const registro = await prisma.horariosBruno.findFirst({
        where: {
            diaSemana: diaSemana,
            horarios: {
                has: horarioReferencia, // Verifica se o array contém o horário de referência
            },
        },
    });


    // Calcula a nova lista de horários com o horário novo inserido após o de referência
    const novosHorarios = [];
    for (const horario of registro.horarios) {
        novosHorarios.push(horario); // Adiciona o horário atual
        if (horario === horarioReferencia) {
            novosHorarios.push(horarioNovo); // Adiciona o novo horário logo após o horário de referência
        }
    }

    // Atualiza o registro com a nova lista de horários
    await prisma.horariosBruno.update({
        where: {
            diaSemana: diaSemana, // Garante que estamos atualizando o registro correto
        },
        data: {
            horarios: novosHorarios, // Atualiza o array
        },
    });
}
async function deleteHorarioBruno(data) {
    try {

        const { diaSemana, horario } = data;


        // Primeiro, recupere o registro atual para obter a lista de horários
        const horarioAtual = await prisma.horariosBruno.findUnique({
            where: {
                diaSemana: diaSemana, // Certifique-se de passar o valor correto
            },
        });


        // Crie uma nova lista de horários sem o horário a ser removido
        const novosHorarios = horarioAtual.horarios.filter(h => h !== horario);

        // Atualize o registro com a lista modificada
        await prisma.horariosBruno.update({
            where: { diaSemana: diaSemana },
            data: {
                horarios: {
                    set: novosHorarios,
                },
            },
        });

    } catch (error) {
        console.error('Erro ao deletar o horário:', error);
        throw error;
    }
}
async function updateHorariosWallyson(antigo,novo,diaSemana) {
    const registros = await prisma.horariosWallyson.findMany({
        where: {
            diaSemana: diaSemana,
            horarios: {
                has: antigo,
            },
        },
    });


    // Atualiza cada registro encontrado
    for (const registro of registros) {
        const horariosAtualizados = registro.horarios.map(horario =>
            horario === antigo ? novo : horario
        );

        // Realiza a atualização
        await prisma.horariosWallyson.updateMany({
            where: {
                diaSemana: diaSemana,
                horarios: {
                    has: antigo, // Garante que só atualiza os registros com o horário antigo
                },
            },
            data: {
                horarios: horariosAtualizados, // Define os novos horários
            },
        });
    }
}
async function addHorarioWallyson(horarioReferencia, horarioNovo, diaSemana) {
    // Busca o registro que contém o horário de referência
    const registro = await prisma.horariosWallyson.findFirst({
        where: {
            diaSemana: diaSemana,
            horarios: {
                has: horarioReferencia, // Verifica se o array contém o horário de referência
            },
        },
    });


    // Calcula a nova lista de horários com o horário novo inserido após o de referência
    const novosHorarios = [];
    for (const horario of registro.horarios) {
        novosHorarios.push(horario); // Adiciona o horário atual
        if (horario === horarioReferencia) {
            novosHorarios.push(horarioNovo); // Adiciona o novo horário logo após o horário de referência
        }
    }

    // Atualiza o registro com a nova lista de horários
    await prisma.horariosWallyson.update({
        where: {
            diaSemana: diaSemana, // Garante que estamos atualizando o registro correto
        },
        data: {
            horarios: novosHorarios, // Atualiza o array
        },
    });
}
async function deleteHorarioWallyson(data) {
    try {

        const { diaSemana, horario } = data;

        // Verifique se 'diaSemana' está definido
        if (!diaSemana) {
            throw new Error('O dia da semana não foi fornecido');
        }

        // Primeiro, recupere o registro atual para obter a lista de horários
        const horarioAtual = await prisma.horariosWallyson.findUnique({
            where: {
                diaSemana: diaSemana, // Certifique-se de passar o valor correto
            },
        });


        // Crie uma nova lista de horários sem o horário a ser removido
        const novosHorarios = horarioAtual.horarios.filter(h => h !== horario);

        // Atualize o registro com a lista modificada
        await prisma.horariosWallyson.update({
            where: { diaSemana: diaSemana },
            data: {
                horarios: {
                    set: novosHorarios,
                },
            },
        });

    } catch (error) {
        console.error('Erro ao deletar o horário:', error);
        throw error;
    }
}

module.exports = {
    getHorariosBruno,
    getHorariosWallyson,
    updateHorariosBruno,
    addHorarioBruno,
    deleteHorarioBruno,
    updateHorariosWallyson,
    addHorarioWallyson,
    deleteHorarioWallyson
}