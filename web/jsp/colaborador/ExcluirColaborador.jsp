<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Colaborador" %>
<%@page import="br.com.fatec.controler.ColaboradorController" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Colaborador colab = new Colaborador();
    colab.setId(id);
    ColaboradorController colCont = new ColaboradorController();
    colab = colCont.excluiColaborador(colab);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Colaborador</title>
    </head>
    <body>
        <h1>EXCLUSÃO DO COLABORADOR</h1>
                                         <a href="../contacesso/menu.jsp"class="btn btn-info" >Voltar para menu</a><BR>

    </body>
</html>
