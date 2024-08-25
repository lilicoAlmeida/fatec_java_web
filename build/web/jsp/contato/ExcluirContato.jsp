<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Contato" %>
<%@page import="br.com.fatec.controler.ContatoController" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Contato contato = new Contato();
    contato.setId(id);
    ContatoController contatoCont = new ContatoController();
    contato = contatoCont.excluiContato(contato);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Contato</title>
    </head>
    <body>
        <h1>CONTATO EXCLUIDO COM SUCESSO</h1>    
                                         <a href="../contacesso/menu.jsp"class="btn btn-info" >Voltar para menu</a><BR>

    </body>
</html>
