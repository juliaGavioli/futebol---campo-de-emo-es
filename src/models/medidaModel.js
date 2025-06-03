var database = require("../database/config");

function buscarUltimasMedidas(idUsuario) {

    var instrucaoSql = `select time(r.Tempogasto) ,
        r.certas ,
        r.erradas
        from resposta r where fkusuario = ${idUsuario}  order by idResposta desc`  ;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
}
