<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioController"%>




<%
String login = request.getParameter("LOGIN");
String senha = request.getParameter("SENHA");
Usuario usu = new Usuario();
usu.setLogin(login);
usu.setSenha(senha);
UsuarioController usuCont = new UsuarioController();
usu = usuCont.validaUsuario(usu);
session.setAttribute("UsuarioLogado", usu);
%>

<html>
    <head>
        <title>Menu</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        		<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
                        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    </head>
    <body>
        <div class="col-md-12 "  class="container "style="text-align:center ">
     <h1> Menu Principal </h1>
     </div>
     <div  class="col-md-3 " class="container">
            <h2  >Menu Usuario </h2>
            <a href="../contacesso/InserirUsuario.jsp" class="btn btn-primary">inserir</a><BR>
         <BR>   <a href="../contacesso/ListarUsuario.jsp" class="btn btn-warning" >Listar</a><BR>
         
            
        </div>
        
          <div class="col-md-3 " class="container">
              <h2 class="border">Menu Contato </h2>
              
            <a href="../contato/InserirContato.jsp" class="btn btn-primary">   Inserir</a><BR>
          <BR>  <a href="../contato/ListarContato.jsp"class="btn btn-warning" >Listar</a><BR>
         

          </div>
        
          <div  class="col-md-3 "  class="border border-dark">
              
              <h2 >Menu Colaborador </h2>
            <a href="../colaborador/InserirColaborador.jsp" class="btn btn-primary">Inserir</a><BR>
           <BR> <a href="../colaborador/ListarColaborador.jsp" class="btn btn-warning" >Listar</a><BR>
           
        </div>
          
          <div class="col-md-10 " class="container">
              <hr style="color:blue;">
              <h2 style="text-align:center " > </h2>
             <a href="../contacesso/login.jsp"class="btn btn-danger" >Sair do sistema</a><BR>

        </div>
    </body>
</html>