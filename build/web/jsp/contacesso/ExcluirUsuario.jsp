<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario" %>
<%@page import="br.com.fatec.controler.UsuarioController" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Usuario usu = new Usuario();
    usu.setId(id);
    UsuarioController usuCont = new UsuarioController();
    usu = usuCont.excluiUsuario(usu);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Usuário</title>
    </head>
    <body>
        <h1>USUÁRIO EXCLUIDO COM SUCESSO</h1>
                                 <a href="../contacesso/menu.jsp"class="btn btn-info" >Voltar para menu</a><BR>


    </body>
</html>
