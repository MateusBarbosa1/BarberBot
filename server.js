const makeWASocket = require('@whiskeysockets/baileys').default;
const { useMultiFileAuthState } = require('@whiskeysockets/baileys');
const qrcode = require('qrcode-terminal');

const path = require("path");

const utils = require('./utils/utils');
const controllers = require('./controllers/allControllers');



// Diretório de autenticação
const authDirectory = path.join(__dirname, 'wwebjs_auth');

// Configuração da autenticação no Baileys
const startBot = async () => {
    const { state, saveCreds } = await useMultiFileAuthState(authDirectory);

    const sock = makeWASocket({
        auth: state,
        printQRInTerminal: true, // Mostra o QR code automaticamente no terminal
        markOnlineOnConnect: false
    });

    // Evento de QR Code
    sock.ev.on('connection.update', (update) => {
        const { connection, qr } = update;
        if (qr) {
            console.log('BARBOSA DEV - Escaneie o código para a conexão:');
            qrcode.generate(qr, { small: true });
        }

        if (connection === 'open') {
            console.log('Conectado com sucesso!');
        } else if (connection === 'close') {
            console.log('Bot desconectado. Tentando reconectar...');
            startBot();
        }
    });

    // Salva as credenciais ao alterar o estado
    sock.ev.on('creds.update', saveCreds);

    // Evento para tratar mensagens recebidas
    sock.ev.on('messages.upsert', async (m) => {
        const msg = m.messages[0];

        // Ignorar mensagens do próprio bot ou mensagens sem conteúdo
        if (!msg.key.fromMe && msg.message) {
            let msg_user = "";

            if (
                msg.message &&
                msg.message.extendedTextMessage &&
                msg.message.extendedTextMessage.text
            ) {
                msg_user = msg.message.extendedTextMessage.text.toLowerCase();
            } else if (msg.message && msg.message.conversation) {
                msg_user = msg.message.conversation.toLowerCase();
            }

            try {
                if (msg_user) {
                    // Chamando os controladores
                    await controllers.receiveName(sock, msg, msg_user);
                    await controllers.deleteAgendamento(sock, msg, msg_user);
                    await controllers.menuInitBot(sock, msg, msg_user);
                    await controllers.receiveDate(sock, msg, msg_user);
                    await controllers.receiveTime(sock, msg, msg_user);

                    // Switch para tratar comandos
                    switch (msg_user) {
                        case '1':
                            await controllers.optionAgendarORCabelo(sock, msg, msg_user); // AGENDAR OU CABELO
                            break;
                        case '2':
                            await controllers.optionCancelarORBarba(sock, msg, msg_user); // CANCELAR OU BARBA
                            break;
                        case '3':
                            await controllers.optionAtendenteORSobrancelha(sock, msg, msg_user); // ATENDENTE OU SOBRANCELHA
                            break;
                        case '4':
                            await controllers.selectService(sock, msg, 4, msg_user); // ACABAMENTO
                            break;
                        case '5':
                            await controllers.selectService(sock, msg, 5, msg_user); // CABELO + SOBRANCELHA
                            break;
                        case '6':
                            await controllers.selectService(sock, msg, 6, msg_user); // CABELO + BARBA
                            break;
                        case 'b':
                        case 'bruno':
                            await controllers.selectBarber(sock, msg, 1, msg_user); // BRUNO
                            break;
                        case 'w':
                        case 'wallyson':
                            await controllers.selectBarber(sock, msg, 2, msg_user); // WALLYSON
                            break;
                        case '0':
                            await controllers.returnMenuBot(sock, msg, msg_user); // VOLTAR AO MENU
                            break;
                        default:
                            break;
                    }
                }
            } catch (err) {
                console.error('Houve algum erro:', err);
            }
        }
    });

    
};

startBot();

// Função para enviar mensagens
module.exports.send = async function (number, message) {
    try {
        await sock.sendMessage(number, {
            text: message
        });
    } catch (error) {
        console.error('Erro ao enviar mensagem:', error.message);
    }
};

const express = require('express');

const app = express();
app.listen(3000, () => {
    console.log('server running on port 3000!');
});