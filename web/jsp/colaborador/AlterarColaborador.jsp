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
        <title>Alterar Colaborador</title>
    </head>
    <body>
        <h1>ALTERAR COLABORADOR</h1>
            <form name="AlterarColaborador" action="ValidaAlterarColaborador.jsp" method="post">               
               <p> Nome  <input type="text"   name="NOME" value="<%=colab.getNome()%>"><br></p>
               <p> Tipo&nbsp&nbsp&nbsp<input type="text"   name="TIPO" value="<%=colab.getTipo()%>"><br></p>
               <input type="hidden" name="ID" value="<%=colab.getId()%>">
               <input type="submit" name="Enviar"><br>
            </form>
    </body>
</html>
