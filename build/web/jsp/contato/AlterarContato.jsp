<%@page import="br.com.fatec.bean.Contato" %>
<%@page import="br.com.fatec.controler.ContatoController" %>



<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Contato contato = new Contato();
    contato.setId(id);
    ContatoController contatoCont = new ContatoController();
    contato = contatoCont.buscaContato(contato);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar contato</title>
    </head>
    <body>
        <h1>ALTERAR CONTATO</h1>
        <form name="AlterarContato" action="ValidaAlterarContato.jsp" method="post">
            <p>Nome  <input type="text"   name="NOME"  value="<%=contato.getNome()%>"><br></p>
            <p>RG&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"   name="RG"    value="<%=contato.getRg()%>">  <br></p>
            <p>CPF&nbsp&nbsp&nbsp<input type="text"   name="CPF"   value="<%=contato.getCpf()%>"> <br></p>
            <p>END&nbsp&nbsp<input type="text"   name="END"   value="<%=contato.getEnd()%>"> <br></p>
            <input type="hidden" name="ID" value="<%=contato.getId()%>">                
                  <input type="submit" name="Enviar"><br>
        </form>
    </body>
</html>
