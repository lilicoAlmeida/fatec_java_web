<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Colaborador" %>
<%@page import="br.com.fatec.controler.ColaboradorController" %>
<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");

    Colaborador colab = new Colaborador();    
    colab.setId(id);
    colab.setNome(nome);
    colab.setTipo(tipo);  
    ColaboradorController colCont = new ColaboradorController();
    colab = colCont.alteraColaborador(colab);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida Alterar Colaborador</title>
    </head>
    <body>
        <h1>ALTERAR COLABORADOR!</h1>
        <h2><%=colab.getNome()%><br></h2>
        <h2><%=colab.getTipo()%><br></h2>
    </body>
</html>
