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


<body>


<section id="container" >

   <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
        <!-- page start-->
            
<div class="row">
            <div class="col-sm-12" style="color: black">
                <section class="panel">
                    <header class="panel-heading">
                        <h2>Bem vindo!</h2>
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                           
                         </span>
                    </header>
                    <div class="panel-body">
                    <input type="hidden" name="badges" id="badges" value="${avisaBadge}"> 
					<form class="form-horizontal bucket-form" method="get">
						<div>
						<h3>Intru��es antes de come�ar:</h3>
							<label class="control-label" style="text-align: justify">Ol� ${userWeb.nome}! 
							<br>
							Voc� acabou de completar o guia inicial para come�ar a utilizar o E-Game! Aqui, voc� ir� praticar o seu conhecimento e desafiar seus amigos em um
							ambiente divertido e descontra�do!						
							  
							<br><br>
							Voc� ter� 20 quest�es da sua mat�ria favorita, e voc� pode levar o tempo que precisar para realiz�-la! 
							Existem algumas regras para ajud�-lo a completar todas as quest�es com sucesso!
							<br><br>
							<h3>Como funciona?</h3>
							
							Cada quest�o certa valer� 5 PONTOS! No quadro a esquerda, voc� encontrar� todas as informa��es que voc� precisa para usar o sistema. 
							Voc� encontrar� seus pontos, a tabela de ranking, seus badges e a barra de progresso.
							
							<br><br>
							Se precisar de uma dica para responder a quest�o, basta clicar no bot�o <img src="img/helpbutton.PNG">. 
							Voc� ter� 3 dicas dispon�veis a nenhum custo! Se quiser ver mais dicas, cada uma valer� 1 ponto a menos caso voc� acerte a quest�o!
							Por exemplo, se pedir as 5 dicas e acertar a quest�o, 2 dicas valer�o 2 pontos e, dos 5 pontos que voc� ganharia, vai ganhar 3! 
							<br><br>
							Voc� ter� 3:00 segundos para responder cada quest�o. Caso o tempo se esgote, voc� ter� que ir para a pr�xima quest�o e n�o poder� tentar novamente.
							<br><br>
							Como j� visto no exemplo, para ir para a pr�xima quest�o voc� precisa clicar no bot�o <img src="img/checkbutton.PNG"> e ent�o no <img src="img/continuebutton.PNG">. 
							Voc� ter� 3 chances para acertar a quest�o antes de passar para a pr�xima!
							 </label><p></p>
						</div>          
						<br></br>
						<div class="form-group">
							<div class="col-lg-12 btn btn-info"><strong >Todos os Badges</strong></div>
						</div>
						
					</form>
                    </div>
                </section>
            </div>
        </div>
        <div class="row">
			<div class="col-sm-12">
                <div class="timeline">

                    <div id="pai" style="margin-left: 10px">
                    <article class="timeline-item alt">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow-alt"></span>

                                    <span class="timeline-icon red">
                                        <i class="fa fa-check"></i>
                                    </span>
                                  <img class="intro" align="left" src="images/trofeus/5.png" height="100px" alt="Albert Einstein">
                                    <h1 class="red">5 corretas - APENAS COME�ANDO</h1>
                                    <p>Aqui � onde tudo come�a! Se voc� acertar 5 quest�es, ganhar� seu primeiro badge! </p>
                                </div>
                            </div>
                        </div>
                    </article>
                    
                    <article class="timeline-item ">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow"></span>
                                    <span class="timeline-icon green">
                                        <i class="fa fa-check"></i>
                                    </span>
                                 <img class="intro" align="left" src="images/trofeus/10.png" height="100px" alt="Albert Einstein">
                                    <h1 class="green">10 corretass - PROGREDINDO</h1>
                                    <p>Sim, � poss�vel! Acerte 10 quest�es e voc� ganhar� o badge PROGREDINDO!</p>
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="timeline-item alt">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow-alt"></span>
                                    <span class="timeline-icon blue">
                                        <i class="fa fa-check"></i>
                                    </span>
                                    <img class="intro" align="left" src="images/trofeus/15.png" height="100px" alt="Albert Einstein">
                                    <h1 class="blue">15 corretas - PERFEITO!</h1>
                                    <p>N�o seria �timo? Um a mais para sua cole��o!!!</p>
                                 
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="timeline-item">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow"></span>
                                    <span class="timeline-icon purple">
                                        <i class="fa fa-check"></i>
                                    </span>
                                    <img class="intro" align="left" src="images/trofeus/20.png" height="100px" alt="Albert Einstein">
                                    <h1 class="purple">20 corretas - G�NIO!</h1>
                                    <p>Perfeito! Com 20 acertos assim, voc� � um g�nio!</p>
                                    <p>
                                        <i class=" fa fa-exclamation-sign"></i> New task added for <span><a href="#" class="purple">Denial Collins</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="timeline-item alt">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow-alt"></span>
										<span class="timeline-icon red">
											<i class="fa fa-check"></i>
										</span>
										<img class="intro" align="left" src="images/trofeus/top3.png" height="100px" alt="Albert Einstein">
                                    <h1 class="red">TOP 3</h1>
                                    <p>Este badge ser� conquistado pelo terceiro colocado nas posi��es do ranking!!</p>
                                   
                                </div>
                            </div>
                        </div>
                    </article>                    

                    <article class="timeline-item">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow"></span>
										<span class="timeline-icon green">
											<i class="fa fa-check"></i>
										</span>
										<img class="intro" align="left" src="images/trofeus/top2.png" height="100px" alt="Albert Einstein">
                                    <h1 class="green">TOP 2</h1>
                                    <p>O segundo colocado no ranking levar� esse badge para o profile!</p>
                                   
                                </div>
                            </div>
                        </div>
                    </article>   
       
                    <article class="timeline-item alt">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow-alt"></span>
										<span class="timeline-icon blue">
											<i class="fa fa-check"></i>
										</span>
										<img class="intro" align="left" src="images/trofeus/top1.png" height="100px" alt="Albert Einstein">
                                    <h1 class="blue">TOP 1 - CAMPE�O</h1>
                                    <p>Isso mesmo! Esse ir� para quem ficar no topo do ranking! </p>
                                   
                                </div>
                            </div>
                        </div>
                    </article>      
                    
                   <article class="timeline-item">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow"></span>
										<span class="timeline-icon purple">
											<i class="fa fa-check"></i>
										</span>
										<img class="intro" align="left" src="images/trofeus/highfive.png" height="100px" alt="Albert Einstein">
                                    <h1 class="purple">HIGH FIVE</h1>
                                    <p>Voc� ganhou mais que 4 badges? Esse ser� um EXTRA a cada 4 novos badges que voc� conseguir!!</p>
                                   
                                </div>
                            </div>
                        </div>
                    </article>      

                </div>
                </div>
            </div>
        </div>
		
		
		<div style="margin-top:30px;" class="row">
            <div class="col-sm-12">
                <section class="panel">
					
                    <div style="text-align:center;" class="panel-body">
                   		<form action="<c:url value="/evolucao"/>">
	                    	<input type="hidden" name="responder" id="responder" value="true" />
	                        <button type="submit" class="btn btn-info btn-lg">Ir para as quest�es <i class="fa fa-arrow-right"></i></button>
                        </form>
                    </div>
                </section>
            </div>
        </div>
        
		<!-- page end-->
        </section>
    </section>
    <!--main content end-->

<!-- Placed js at the end of the document so the pages load faster -->

<!--Core js-->
<script src="js/lib/jquery.js"></script>
<script src="bs3/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/accordion-menu/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scrollTo/jquery.scrollTo.min.js"></script>
<script src="js/nicescroll/jquery.nicescroll.js" type="text/javascript"></script>
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


<!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="alert alert-success alert-block fade in">
                                <!--<button data-dismiss="alert" class="close close-sm" type="button">
                                    <i class="fa fa-times"></i>
                                </button>-->
                                <h4>
                                    <i class="icon-ok-sign"></i>
                                    Success!
                                </h4>
                                <p>Best check yo self, you're not looking too good...</p>
                            </div>
                  </div>
              </div>
          </div>
          <!-- modal -->




</body>
</html>
