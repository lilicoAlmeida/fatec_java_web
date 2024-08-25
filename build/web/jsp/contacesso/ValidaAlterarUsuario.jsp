<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario" %>
<%@page import="br.com.fatec.controler.UsuarioController" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String status = request.getParameter("STATUS");
    String tipo = request.getParameter("TIPO");

    Usuario usu = new Usuario();
    
    usu.setId(id);
    usu.setNome(nome);
    usu.setLogin(login);
    usu.setSenha(senha);
    usu.setStatus(status);
    usu.setTipo(tipo);
    
    UsuarioController usuCont = new UsuarioController();
    usu = usuCont.alteraUsuario(usu);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Usuario</title>
    </head>
    <body>
        <h1><%=usu.getNome()%><br></h1>
        <h1><%=usu.getLogin()%><br></h1>
        <h1><%=usu.getSenha()%><br></h1>
        <h1><%=usu.getStatus()%><br></h1>
        <h1><%=usu.getTipo()%><br></h1>
    </body>
</html>
