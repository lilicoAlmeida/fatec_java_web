

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Contato</title>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
                        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>
    <body>
         <style type="text/css">
	#imgpos {
		position:absolute;
		left:50%;
		top:30%;
		margin-left:-110px;
		margin-top:-40px;
		}
</style>
    <center>
        <h1>LISTAR CONTATOS</h1>
        <form  id="imgpos" name="listarContato" action="ValidaListarContato.jsp" method="post">
                Nome  <input type="text" name="NOME"><br><br>
                <input class="btn btn-info"  type="submit" name="Enviar"><br><br>
                     <a href="../contacesso/menu.jsp"class="btn btn-info" >Voltar para menu</a><BR>

            </form>
            </center>

    </body>
</html>
