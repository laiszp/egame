<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="images/favicon.html">

   <!--Core CSS -->
    <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

<title>E-class</title>
</head>


  <body class="login-body">

    <div class="container">

      <form class="form-signin" action="<c:url value="user/salvaRegistro"/>">
        <h2 class="form-signin-heading">cadastro</h2>
        <div class="login-wrap">
            <p style="color: black">Entre com suas informações abaixo</p>
            <input style="color: black" type="text" class="form-control" name="user.nome" placeholder="Nome ou apelido" autofocus >
            <input style="color: black" type="text" class="form-control" name="user.idade" placeholder="Idade" autofocus>
            <div class="radios">
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.sexo" id="radio-01" value="Masculino" type="radio" /> Masculino
                </label>
                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
                    <input name="user.sexo" id="radio-02" value="Feminino" type="radio" /> Feminino
                </label>
            </div>
<br><br>

            <p style="color: black"> Entre com os dados da conta abaixo</p>
            <input type="text" class="form-control" name="user.usuario" placeholder="Nome de usuário" autofocus>
            <input type="password" class="form-control" name="user.senha" placeholder="Senha">
           
            
             <p style="color: black">Escolha seu avatar</p>
            <div class="radios">
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-01" value="avatar01.png" type="radio" checked />
                     <img src="images/avatar/avatar01.png">
                </label>
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-02" value="avatar02.png" type="radio" />
                     <img src="images/avatar/avatar02.png">
                </label>       
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-03" value="avatar03.png" type="radio" />
                     <img src="images/avatar/avatar03.png">
                </label>
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-04" value="avatar04.png" type="radio" />
                     <img src="images/avatar/avatar04.png">
                </label>          
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-04" value="avatar05.png" type="radio" />
                     <img src="images/avatar/avatar05.png">
                </label>      
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-04" value="avatar06.png" type="radio" />
                     <img src="images/avatar/avatar06.png">
                </label>                                   
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-04" value="avatar07.png" type="radio" />
                     <img src="images/avatar/avatar07.png">
                </label>      
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-04" value="avatar08.png" type="radio" />
                     <img src="images/avatar/avatar08.png">
                </label>      
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-04" value="avatar09.png" type="radio" />
                     <img src="images/avatar/avatar09.png">
                </label>      
                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
                    <input name="user.avatar" id="radio-04" value="avatar10.png" type="radio" />
                     <img src="images/avatar/avatar10.png">
                </label>                                                                                                            
            </div>
            
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

            <button class="btn btn-lg btn-login btn-block" type="submit">Registrar</button>

            <div class="registration">
                Já tem cadastro?
                <a class="" href="<c:url value="/login"/>">
                    Login
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