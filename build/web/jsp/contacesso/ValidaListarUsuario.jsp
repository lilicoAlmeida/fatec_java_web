<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario" %>
<%@page import="br.com.fatec.controler.UsuarioController" %>

<%
    Usuario usu = (Usuario) session.getAttribute("UsuarioLogado");
    String nome = request.getParameter("NOME");
    usu.setNome(nome);
    UsuarioController usuCont = new UsuarioController();
    List<Usuario> usuarios = usuCont.listaUsuario(usu);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTA USUÁRIOS</title>
    </head>
    <body>
        <table class="striped responsive-table" border="1" >
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Login">Login</th>
                  <th data-field="Senha">Senha</th>
                  <th data-field="Status">Status</th>
                  <th data-field="Tipo">Tipo</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(usuarios.isEmpty())) { %>    
                <tbody>
                    <% for (Usuario usus : usuarios) { %>
                        <tr>
                            <td><%=usus.getId()%></td>
                            <td><%=usus.getNome()%></td>
                            <td><%=usus.getLogin()%></td>
                            <td><%=usus.getSenha()%></td>
                            <td><%=usus.getStatus()%></td>
                            <td><%=usus.getTipo()%></td>
                            <% //if(usu.getTipo().equals("ADM")) { %>
                                <td><a href="ExcluirUsuario.jsp?ID=<%=usus.getId()%>">Excluir</a></td>
                                <td><a href="AlterarUsuario.jsp?ID=<%=usus.getId()%>">Alterar</a></td>
                            <%// } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
    </body>
</html>
