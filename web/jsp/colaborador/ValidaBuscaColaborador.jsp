<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Colaborador" %>
<%@page import="br.com.fatec.controler.ColaboradorController" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Colaborador colab = new Colaborador();
    colab.setId(id);
    ColaboradorController colCont = new ColaboradorController();
    colab = colCont.buscaColaborador(colab);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida Busca Colaborador</title>
    </head>
    <body>
        <h1>Dados Usuário</h1>
        <h2><%=colab.getId()%> </h2>
        <h2><%=colab.getNome()%> </h2>
        <h2><%=colab.getTipo()%> </h2>
    </body>
</html>
