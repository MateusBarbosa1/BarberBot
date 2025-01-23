module.exports.isFirstMessageToday = function(userId, userLastMessage) {
    const today = new Intl.DateTimeFormat('pt-br', { timeZone: 'America/Sao_Paulo' }).format(new Date()).split('/').reverse().join('-');
    if(userLastMessage[userId] === today) {
        return false;
    }
    return today;
}
module.exports.isDate = function(msg_date) {
    const datePattern = /^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/\d{4}$/;
    
    // Verifica se a data está no formato correto
    if (datePattern.test(msg_date)) {
        const [day, month, year] = msg_date.split('/').map(Number);
        
        // Criação da data com o mês ajustado (JavaScript começa do mês 0)
        const date = new Date(year, month - 1, day);
        
        // Verifica se a data criada corresponde ao dia, mês e ano originais
        if (date.getDate() === day && date.getMonth() === month - 1 && date.getFullYear() === year) {
            return true; // Data válida
        }
    }
    
    return false; // Formato incorreto ou data inválida
};
module.exports.converterData = function(data) {
    // Divide a data pelo separador '/' e reorganiza os valores
    const partes = data.split('/');
    if (partes.length === 3) {
        // Retorna no formato AAAA-MM-DD
        return `${partes[2]}-${partes[1]}-${partes[0]}`;
    }
    return null; // Retorna null se a data não estiver no formato correto
}
module.exports.isUUID = function(id) {
    const uuidRegex = /^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
    return uuidRegex.test(id);
}