const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

async function getAgendamentos(date, barber) {
    try {
        const agendamento = await prisma.agendamentos.findMany({ where: { barbeiro: barber, date: new Date(date) } });
        return agendamento;
    } catch(err) {
        console.error('Houve algum erro: '+ err);
    } finally {
        await prisma.$disconnect();
    }
    
}
async function getAgendamentosNumber(number) {
    try {
        const agendamentos = await prisma.agendamentos.findMany({ where: { numero: number } });
        return agendamentos;   
    } catch(err) {
        console.error('Houve algum erro: '+ err);
    } finally {
        await prisma.$disconnect();
    }
}
async function setAgendamentos(servico,barber, data,hora,nome, numero, horario_agendamento) {
    try {
        const agendamento = await prisma.agendamentos.create({
            data: {
                servico: servico,
                barbeiro: barber,
                date: data,
                time: hora,
                name: nome,
                numero: numero,
                horarioAgendamento: horario_agendamento
            }
        });
        return agendamento;
    } catch(err) {
        console.error('Houve algum erro: '+ err);
    } finally {
        await prisma.$disconnect();
    }
}
async function deleteAgendamentoID(id) {
    try {
        const agendamentos = await prisma.agendamentos.delete({ where: { id: id } });
        return agendamentos;
    } catch(err) {
        console.error('Houve algum erro: '+ err);
    } finally {
        await prisma.$disconnect();
    }
}
module.exports = {
    getAgendamentos,
    setAgendamentos,
    getAgendamentosNumber,
    deleteAgendamentoID
}