<!DOCTYPE html>
<%@page import="org.apache.log4j.Logger"%>

<html lang="en">
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="images/favicon.html">

    <title>Login</title>

    <!--Core CSS -->
    <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />


</head>

  <body class="login-body">
		
    <div class="container" >
	<%! static Logger logger = Logger.getLogger("jsp.jsp"); %>
	<% logger.info("This is test."); %>
      <form class="form-signin" action="<c:url value="/validalogin"/>">
        <h2 class="form-signin-heading"><img align="middle" style="width: 50%; height: 50%" src="images/logo_egame.PNG"> </h2>
        <div class="login-wrap" style="color: black">
            <div class="user-login-info">
                <input style="color: black" type="text" class="form-control" id="usuario" name="user.usuario" placeholder="Usuário" class="login username-field" autofocus>
                <input style="color: black" type="password" class="form-control" id="senha" name="user.senha" placeholder="Senha" class="login password-field">
            </div>
            <button class="btn btn-lg btn-login btn-block" type="submit">Entrar</button>
			${mensagem}
            <div class="registration">
                Novo usuário?
                <a class="" href="<c:url value="/registrar"/>">
                    Registre-se aqui!
                </a>
            </div>

        </div>

          

      </form>

    </div>



    <!-- Placed js at the end of the document so the pages load faster -->

    <!--Core js-->
    <script src="js/lib/jquery.js"></script>
    <script src="bs3/js/bootstrap.min.js"></script>

  </body>
</html>
