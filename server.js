const { default: makeWASocket, useMultiFileAuthState, fetchLatestBaileysVersion, DisconnectReason } = require('@whiskeysockets/baileys');
const qrcode = require('qrcode-terminal');
const path = require('path');
const express = require('express');

const utils = require('./utils/utils');
const controllers = require('./controllers/allControllers');

// Diretório de autenticação
const authDirectory = path.join(__dirname, 'wwebjs_auth');

// Função principal
const startBot = async () => {
    const { version, isLatest } = await fetchLatestBaileysVersion();
    const { state, saveCreds } = await useMultiFileAuthState(authDirectory);

    const sock = makeWASocket({
        auth: state,
        browser: ['Ubuntu', 'Chrome', '22.04'], // Emula um navegador real
        markOnlineOnConnect: false,
        version, // garante compatibilidade com a versão do WhatsApp
    });

    // ✅ Lidar com QR e reconexão manualmente (sem printQRInTerminal)
    sock.ev.on('connection.update', (update) => {
        const { connection, lastDisconnect, qr } = update;

        if (qr) {
            console.clear();
            console.log('BARBOSA DEV - Escaneie o código para a conexão:');
            qrcode.generate(qr, { small: true });
        }

        if (connection === 'open') {
            console.log('✅ Conectado com sucesso!');
        }

        if (connection === 'close') {
            const shouldReconnect =
                lastDisconnect?.error?.output?.statusCode !== DisconnectReason.loggedOut;
            console.log('⚠️ Conexão perdida. Reconectando:', shouldReconnect);
            if (shouldReconnect) startBot();
            else console.log('❌ Sessão encerrada. Escaneie o QR novamente.');
        }
    });

    // ✅ Salvar credenciais
    sock.ev.on('creds.update', saveCreds);

    // ✅ Tratar mensagens recebidas
    sock.ev.on('messages.upsert', async (m) => {
        const msg = m.messages[0];
        if (!msg.key.fromMe && msg.message) {
            let msg_user = '';

            if (msg.message?.extendedTextMessage?.text) {
                msg_user = msg.message.extendedTextMessage.text.toLowerCase();
            } else if (msg.message?.conversation) {
                msg_user = msg.message.conversation.toLowerCase();
            }

            try {
                if (msg_user) {
                    await controllers.receiveName(sock, msg, msg_user);
                    await controllers.deleteAgendamento(sock, msg, msg_user);
                    await controllers.menuInitBot(sock, msg, msg_user);
                    await controllers.receiveDate(sock, msg, msg_user);
                    await controllers.receiveTime(sock, msg, msg_user);

                    switch (msg_user) {
                        case '1': await controllers.optionAgendarORCabelo(sock, msg, msg_user); break;
                        case '2': await controllers.optionCancelarORBarba(sock, msg, msg_user); break;
                        case '3': await controllers.optionAtendenteORSobrancelha(sock, msg, msg_user); break;
                        case '4': await controllers.selectService(sock, msg, 4, msg_user); break;
                        case '5': await controllers.selectService(sock, msg, 5, msg_user); break;
                        case '6': await controllers.selectService(sock, msg, 6, msg_user); break;
                        case 'b':
                        case 'bruno': await controllers.selectBarber(sock, msg, 1, msg_user); break;
                        case 'w':
                        case 'wallyson': await controllers.selectBarber(sock, msg, 2, msg_user); break;
                        case '0': await controllers.returnMenuBot(sock, msg, msg_user); break;
                        default: break;
                    }
                }
            } catch (err) {
                console.error('🚨 Erro no tratamento da mensagem:', err);
            }
        }
    });

    // Retorna o socket para poder enviar mensagens de fora
    return sock;
};

let sock;
startBot().then((s) => (sock = s));

// ✅ Função global para enviar mensagens
module.exports.send = async function (number, message) {
    try {
        if (!sock) throw new Error('Socket não está conectado.');
        await sock.sendMessage(number, { text: message });
    } catch (error) {
        console.error('Erro ao enviar mensagem:', error.message);
    }
};

// Servidor Express
const app = express();
app.listen(3000, () => console.log('🌐 Servidor rodando na porta 3000!'));
