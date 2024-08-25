<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Colaborador" %>
<%@page import="br.com.fatec.controler.ColaboradorController"%>

<%
    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");

    Colaborador col = new Colaborador();    
    col.setNome(nome);
    col.setTipo(tipo);
    
    ColaboradorController colCont = new ColaboradorController();
    col = colCont.inseriColaborador(col);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validação Inserir Colaborador</title>
    </head>
    <body>
        <h1>COLABORADOR INSERIDO COM SUCESSO</h1><br>
        <h2><%=col.getNome()%><br></h2>
        <h2><%=col.getTipo()%><br></h2>
    </body>
</html>
