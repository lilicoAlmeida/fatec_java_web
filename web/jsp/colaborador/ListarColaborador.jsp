<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Colaborador</title>
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
        <form  id="imgpos" name="listarColaborador" action="ValidaListarColaborador.jsp" method="post">
            <p>Nome  <input  class="form-group" type="text" name="NOME"><br></p>
                      <input class="btn btn-info" type="submit" name="Enviar"><br>
                       <a href="../contacesso/menu.jsp"class="btn btn-info" >Voltar para menu</a><BR>

        </form>
        </center>
    </body>
</html>
