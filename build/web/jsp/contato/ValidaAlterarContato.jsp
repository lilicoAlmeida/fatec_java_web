<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Contato" %>
<%@page import="br.com.fatec.controler.ContatoController" %>


<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String rg = request.getParameter("RG");
    String cpf = request.getParameter("CPF");
    String ende = request.getParameter("END");

    Contato contato = new Contato();
    
    contato.setId(id);
    contato.setNome(nome);
    contato.setRg(rg);
    contato.setCpf(cpf);
    contato.setEnd(ende);
    
    ContatoController contatoCont = new ContatoController();
    contato = contatoCont.alteraContato(contato);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida Alterar Contato</title>
    </head>
    <body>
        <h1>ALTERAR CONTATO!</h1>        
        <h2><%=contato.getNome()%>  <br></h2>
        <h2><%=contato.getRg()%>    <br></h2>
        <h2><%=contato.getCpf()%>   <br></h2>
        <h2><%=contato.getEnd()%>   <br></h2>
    </body>
</html>
