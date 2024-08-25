<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Contato" %>
<%@page import="br.com.fatec.controler.ContatoController"%>

<%
    String nome = request.getParameter("NOME");
    String rg = request.getParameter("RG");
    String cpf = request.getParameter("CPF");
    String end = request.getParameter("END");

    Contato cont = new Contato();    
    cont.setNome(nome);
    cont.setRg(rg);
    cont.setCpf(cpf);
    cont.setEnd(end);
    
    ContatoController contCont = new ContatoController();
    cont = contCont.inseriContato(cont);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validação Inserir Contato</title>
    </head>
    <body>
        <h1>CONTATO INSERIDO COM SUCESSO</h1><br>
        <h2><%=cont.getNome()%>  <br></h2>
        <h2><%=cont.getRg()%>    <br></h2>
        <h2><%=cont.getCpf()%>   <br></h2>
        <h2><%=cont.getEnd()%>   <br></h2>
    </body>
</html>
