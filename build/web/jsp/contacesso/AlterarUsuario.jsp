<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario" %>
<%@page import="br.com.fatec.controler.UsuarioController" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Usuario usu = new Usuario();
    usu.setId(id);
    UsuarioController usuCont = new UsuarioController();
    usu = usuCont.buscaUsuario(usu);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Usuario</title>
    </head>
    <body>
            <form name="AlterarUsuario" action="ValidaAlterarUsuario.jsp" method="post">                      
               <p> Nome    <input type="text" name="NOME" value="<%=usu.getNome()%>">        <br></p>
               <p> Login   <input type="text" name="LOGIN" value="<%=usu.getLogin()%>">      <br></p>
               <p> Senha   <input type="text" name="SENHA" value="<%=usu.getSenha()%>">      <br></p>
               <p> Status  <input type="text" name="STATUS" value="<%=usu.getStatus()%>">    <br></p>
               <p> Tipo &nbsp&nbsp<input type="text" name="TIPO" value="<%=usu.getTipo()%>">        <br></p>
               <input type="hidden" name="ID" value="<%=usu.getId()%>">                            
               <input type="submit" name="Enviar"><br>    
                                        <a href="../contacesso/menu.jsp"class="btn btn-info" >Voltar para menu</a><BR>

            </form>
    </body>
</html>