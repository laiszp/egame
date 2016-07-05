<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
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

    <link rel="stylesheet" href="assets/jquery-steps-master/demo/css/jquery.steps.css">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

<title>E-class</title>
</head>


<body> <!--class="full-width"-->

<section id="container" >

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
        <!-- page start-->

        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Questionário

                    </header>
                    <div class="panel-body">

                        <div id="">
                            <h2>Segundo passo</h2>
                            <section>
                                <form name="formQuestionario2" class="form-horizontal" action="<c:url value="/user/gravaQuestionario2"/>">
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Explorar para saber o que você pode encontrar."</label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question13" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question13" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question13" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question13" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question13" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div> 
          
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Freneticamente escapar de um terrível inimigo." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question14" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question14" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question14" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question14" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question14" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>       
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Se virar para solucionar um quebra-cabeça desafiador." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question15" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question15" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question15" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question15" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question15" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>  
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"A luta para derrotar um difícil chefão." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question16" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question16" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question16" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question16" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question16" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>     
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Jogando em um grupo, online no mesmo ambiente." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question17" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question17" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question17" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question17" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question17" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>   
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Respondendo rapidamente a uma situação emocionante." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question18" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question18" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question18" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question18" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question18" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>  
                                        
                                         <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Pegando todos os objetos colecionáveis em uma área." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question19" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question19" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question19" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question19" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question19" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>  
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Olhar em volta apenas para apreciar o cenário." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question20" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question20" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question20" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question20" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question20" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>  
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Estar no controle em alta velocidade." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question21" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question21" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question21" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question21" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question21" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>  
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Elaborar uma estratégia ao se decidir qual será a próxima ação." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question22" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question22" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question22" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question22" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question22" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>  
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Sentir-se aliviado quando fudir para uma área segura." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question23" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question23" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question23" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question23" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question23" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div> 
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Escolher um oponente forte quando está jogando um contra um." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question24" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question24" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question24" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question24" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question24" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>   
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Conversar com outros jogadores, online no mesmo ambiente." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question25" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question25" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question25" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question25" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question25" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>  
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Encontrar o que você precisa para completar sua coleção." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question26" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question26" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question26" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question26" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question26" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div> 
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Se pendurar em um penhasco." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question27" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question27" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question27" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question27" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question27" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div> 
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Querer saber o que está por trás de uma porta fechada." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question28" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question28" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question28" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question28" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question28" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div> 
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Se sentir assustado, com muito medo ou perturbado." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question29" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question29" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question29" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question29" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question29" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div> 
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Pensar no que você pode fazer sozinho." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question30" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question30" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question30" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question30" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question30" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Completar um desafio depois de ter fracassado diversas vezes." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question31" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question31" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question31" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question31" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question31" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Cooperar com estranhos." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question32" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question32" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question32" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question32" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question32" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">"Conseguir 100% (completar tudo em um jogo)." </label>
                                            <div class="col-lg-8" style="margin-top: 5px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario2.question33" required="required" id="radio-01" value="Eu adoro!" type="radio" /> Eu adoro!
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question33" id="radio-02" value="Eu gosto" type="radio" /> Eu gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question33" id="radio-02" value="Tanto faz" type="radio" /> Tanto faz
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question33" id="radio-02" value="Eu não gosto" type="radio" /> Eu não gosto
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario2.question33" id="radio-02" value="Eu detesto!" type="radio" /> Eu detesto!
									                </label>
									            </div>
                                            </div>
                                        </div>
                              			
                              			<div class="right">
											<button type="submit" class="btn btn-info btn-lg">Próximo <i class="fa fa-arrow-right"></i></button>
										</div> 
                                </form>
                            </section>

                      
                        </div>
                    </div>
                </section>
                
            </div>
        </div>
        <!-- page end-->
        </section>
    </section>
    <!--main content end-->


</section>

<!-- Placed js at the end of the document so the pages load faster -->

<!--Core js-->
<script src="js/lib/jquery.js"></script>
<script src="bs3/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/accordion-menu/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scrollTo/jquery.scrollTo.min.js"></script>>
<script src="js/nicescroll/jquery.nicescroll.js" type="text/javascript"></script>

<script src="assets/jquery-steps-master/build/jquery.steps.js"></script>
<!--Easy Pie Chart-->
<script src="assets/easypiechart/jquery.easypiechart.js"></script>
<!--Sparkline Chart-->
<script src="assets/sparkline/jquery.sparkline.js"></script>
<!--jQuery Flot Chart-->
<script src="assets/flot-chart/jquery.flot.js"></script>
<script src="assets/flot-chart/jquery.flot.tooltip.min.js"></script>
<script src="assets/flot-chart/jquery.flot.resize.js"></script>
<script src="assets/flot-chart/jquery.flot.pie.resize.js"></script>


<!--common script init for all pages-->
<script src="js/scripts.js"></script>

<script>
    $(function ()
    {
        $("#wizard").steps({
            headerTag: "h2",
            bodyTag: "section",
            transitionEffect: "slideLeft"
        });

        $("#wizard-vertical").steps({
            headerTag: "h2",
            bodyTag: "section",
            transitionEffect: "slideLeft",
            stepsOrientation: "vertical"
        });
    });


</script>

</body>
</html>
