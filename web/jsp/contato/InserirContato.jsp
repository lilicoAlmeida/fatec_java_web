<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Contato</title>
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
<form  id="imgpos" name="inserirContato" action="ValidaInserirContato.jsp" method="post">
            <p>Nome<input type="text"   name="NOME"> <br></p>
            <p>Rg      <input type="text"   name="RG">   <br></p>
            <p>Cpf     <input type="text"   name="CPF">  <br></p>
            <p>End     <input type="text"   name="END">  <br><br></p>
                        <input class="btn btn-danger" type="submit" name="Enviar">
                        <input class="btn btn-danger" type="reset"  name="Limpar" value="Limpar">  
                      <a href="../contacesso/menu.jsp"class="btn btn-danger" >Voltar para menu</a><BR>

                        
        </form>
        </center>
    </body>    
</html>
