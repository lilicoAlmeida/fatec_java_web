<%@page import="br.com.fatec.bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.bean.Colaborador" %>
<%@page import="br.com.fatec.controler.ColaboradorController" %>

<%
    Usuario usu = (Usuario) session.getAttribute("UsuarioLogado");
    Colaborador colab = new Colaborador();
    String nome = request.getParameter("NOME");
    colab.setNome(nome);
    ColaboradorController colCont = new ColaboradorController();
    List<Colaborador> colaborador = colCont.listaColaborador(colab);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTA COLABORADOR</title>
    </head>
<body>
        <table class="striped responsive-table" border="1" >
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Tipo">Tipo</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(colaborador.isEmpty())) { %>    
                <tbody>
                    <% for (Colaborador col : colaborador) { %>
                        <tr>
                            <td><%=col.getId()%></td>
                            <td><%=col.getNome()%></td>
                            <td><%=col.getTipo()%></td>
                            <% //if (usu.getTipo().equals("ADM")) { %>
                                <td><a href="ExcluirColaborador.jsp?ID=<%=col.getId()%>">Excluir</a></td>
                                <td><a href="AlterarColaborador.jsp?ID=<%=col.getId()%>">Alterar</a></td>
                            <% //} %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
    </body>
</html>
