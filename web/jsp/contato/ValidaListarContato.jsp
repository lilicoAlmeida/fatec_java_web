<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Contato" %>
<%@page import="br.com.fatec.controler.ContatoController" %>
<%@page import="br.com.fatec.bean.Usuario" %>



<%
    Usuario usu = (Usuario) session.getAttribute("UsuarioLogado");
    String nome = request.getParameter("NOME");
    Contato contato = new Contato();
    contato.setNome(nome);
    ContatoController contatoCont = new ContatoController();
    List<Contato> listaContato = contatoCont.listaContato(contato);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida Listar Contato</title>
    </head>
    <body>
        <h1>Lista de Contatos</h1>
        <table class="striped responsive-table" border="1" >
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>                  
                  <th data-field="Rg">Senha</th>
                  <th data-field="Cpf">Status</th>
                  <th data-field="Endereço">Tipo</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(listaContato.isEmpty())) { %>    
                <tbody>
                    <% for (Contato contatos : listaContato) { %>
                        <tr>
                            <td><%=contatos.getId()%></td>
                            <td><%=contatos.getNome()%></td>
                            <td><%=contatos.getRg()%></td>
                            <td><%=contatos.getCpf()%></td>
                            <td><%=contatos.getEnd()%></td>
                            <%// if (usu.getTipo().equals("ADM")) { %>
                                <td><a href="ExcluirContato.jsp?ID=<%=contatos.getId()%>">    Excluir</a></td>
                                <td><a href="AlterarContato.jsp?ID=<%=contatos.getId()%>">Alterar</a></td>
                            <% //} %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
    </body>
</html>
