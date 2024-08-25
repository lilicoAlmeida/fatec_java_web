

<!DOCTYPE HTML>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">

		<title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- jquery - link cdn -->
		<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

		<!-- bootstrap - link cdn -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
               <!--<link rel="stylesheet" href="./css/edisson.css"> -->
	<style type="text/css">
	.imgpos {
		
		left:50%;
		top:90%;
		margin-left:-110px;
		margin-top:100px;
		}
</style>
		
	</head>
        <div class="col-md-5"  style="text-align:center "  >
            
            <h2>Realize seu login com usuario e senha fornecidos pelo adm do sistema</h2>
							<form name="FORMLOGIN" method="post" action="menu.jsp" id="formLogin">
								<div class="form-group">
									<input type="text" class="form-control" id="campo_usuario" name="LOGIN" placeholder="Usuário" />
								</div>
								
								<div class="form-group">
									<input type="password" class="form-control red" id="campo_senha" name="SENHA" placeholder="Senha" />
								</div>
								
								<button type="buttom" class="btn btn-primary" id="btn_login">Entrar</button>
                                                                 <a href="../contacesso/InserirUsuario.jsp" class="btn btn-secundary">Cadastrar novo usuario</a><BR>

								<br /><br />
                                                                </div>
							</form>

						

						</form>
				  	</ul>
	            </li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </nav>


	    <div class="container">

	      

	      <div class="clearfix"></div>
		</div>


	    </div>
	
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	</body>
</html>
