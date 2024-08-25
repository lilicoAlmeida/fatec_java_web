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
        <title>Valida Busca Usuário</title>
    </head>
    <body>
        <h1>Dados Usuário</h1>
        <h2><%=usu.getId()%> </h2>
        <h2><%=usu.getNome()%> </h2>
        <h2><%=usu.getLogin()%> </h2>
        <h2><%=usu.getSenha()%> </h2>
        <h2><%=usu.getStatus()%> </h2>
        <h2><%=usu.getTipo()%> </h2>
    </body>
</html>
