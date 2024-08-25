<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Contato"%>
<%@page import="br.com.fatec.controler.ContatoController" %>



<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Contato contato = new Contato();
    contato.setId(id);
    ContatoController contatoCont = new ContatoController();
    contato = contatoCont.buscaContato(contato);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida Busca Contato</title>
    </head>
    <body>
        <h1>Dados Contato</h1>
        <h2><%=contato.getId()%>   </h2>
        <h2><%=contato.getNome()%> </h2>
        <h2><%=contato.getRg()%>   </h2>
        <h2><%=contato.getCpf()%>  </h2>
        <h2><%=contato.getEnd()%>  </h2>
    </body>
</html>
