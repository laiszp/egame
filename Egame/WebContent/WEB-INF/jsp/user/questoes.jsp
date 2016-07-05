<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="images/favicon.html">

    <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	
	<!-- <script src="js/alertify.min.js"></script> -->
	<link rel="stylesheet" href="css/alertify.core.css" />
	<link rel="stylesheet" href="css/alertify.default.css" id="toggleCSS" />
	
	<link rel="stylesheet" href="css/alertify/alertify.css" />
	<link rel="stylesheet" href="css/alertify/alertify.min.css" />
	<link rel="stylesheet" href="css/alertify/themes/bootstrap.css" />
	<script src="js/alertify/alertify.js"></script>
	
	<style>	.alertify-log-custom {background: blue;	}	</style>

<title>E-class</title>


<script type="text/javascript">
	
	function proximaQuestao(){
		document.forms["f1"].action = "<c:url value="/user/proximaQuestao"/>";
		document.forms["f1"].submit();
	}
	
	function btnSubmit(escolha) {
		var resposta = document.getElementsByName("respostaAluno");
		var c = escolha;
		
		var d = new Date();
		var n = d.getTime();
		var diferenca =  n - document.getElementById("tempoChegada").value;
		document.getElementById("tempoFeedback").value = diferenca; 
		
		if (c == 'Continuar') {
			document.forms["f1"].action = "<c:url value="user/proximaQuestao"/>";
			document.forms["f1"].submit();
		}
		else if(c == 'Tentar'){
			document.forms["f1"].action = "<c:url value="/user/voltaQuestao"/>";
			document.forms["f1"].submit();
		}
	}
	
	function pediuAjuda(){
		
		document.getElementById("pediuAjuda").value = true;
	}
	
	function verificarBadge(imagem){
		
		//armazena hora de chegada da página
		var d = new Date();
		var n = d.getTime();
		document.getElementById("tempoChegada").value = n; 
		
		var valor = document.getElementById("badges").value;
		var badgeExtra = document.getElementById("badgesExtra").value;
		if(valor == 'true'){
			$('#modalNovoBadge').modal('show');
			//alertify.alert('Parabéns! Você ganhou um NOVO BADGE!');
			
		}
		
		if(badgeExtra == 'true'){
			$('#modalBadgeExtra').modal('show');
			//alertify.alert('UAU! Você ganhou um BADGE EXTRA! Parabéns pelo seu empenho!');
		}
	}
	
	function tempoEsgotado(){
		document.getElementById("tempoEsgotado").value = true;
		antesDoSubmit();
		document.forms["f1"].action = "<c:url value="user/proximaQuestao"/>";
		document.forms["f1"].submit();
	}
</script>

	<style type="text/css"> 
		.divVisivel {display:block;} 	
		.divEscondida {display:none;} 
	</style>
	
	<script language="javascript" type="text/javascript"> 
		
		function CollapseExpand() {
			var nroDica = document.getElementById("nroDica").value;
			 
			if(nroDica == "1"){
				//armazena o tempo entre quando o aluno abriu a dica 1 e clicou na dica2
				var d = new Date();
				var n = d.getTime();
				var diferenca = n - document.getElementById("tempoChegada").value;
				document.getElementById("logTempoDica1Para2").value = diferenca;
				
				var divID = "minhaDivHint2"; 
				var divObject = document.getElementById(divID); 
				var currentCssClass = divObject.className;
				if (divObject.className == "divEscondida"){
					divObject.className = "divVisivel"; 
					document.getElementById("nroDica").value = 2;
					document.getElementById("pontosDescontar").value = 0;
				}
				else divObject.className = "divVisivel";
			}
			else if(nroDica == "2"){
				//armazena o tempo entre quando o aluno abriu a dica 1 e clicou na dica2
				var d = new Date();
				var n = d.getTime();
				var diferenca = n - document.getElementById("tempoChegada").value;
				document.getElementById("logTempoDica2Para3").value = diferenca;
				
				var divID = "minhaDivHint3"; 
				var divObject = document.getElementById(divID); 
				var currentCssClass = divObject.className; 
				if (divObject.className == "divEscondida"){
					divObject.className = "divVisivel"; 
					document.getElementById("nroDica").value = 3;
					document.getElementById("pontosDescontar").value = 0;
				}
				else divObject.className = "divVisivel"; 
			}
			else if(nroDica == "3"){
				//armazena o tempo entre quando o aluno abriu a dica 1 e clicou na dica2
				var d = new Date();
				var n = d.getTime();
				var diferenca = n - document.getElementById("tempoChegada").value;
				
				document.getElementById("logTempoDica3Para4").value = diferenca;
				
				
				var divID = "minhaDivHint4"; 
				var divObject = document.getElementById(divID); 
				var currentCssClass = divObject.className; 
				if (divObject.className == "divEscondida"){
					divObject.className = "divVisivel";
					document.getElementById("nroDica").value = 4;
					document.getElementById("pontosDescontar").value = 2;
				}
				else divObject.className = "divVisivel";
			}
			else if(nroDica == "4"){
				//armazena o tempo entre quando o aluno abriu a dica 1 e clicou na dica2
				var d = new Date();
				var n = d.getTime();
				var diferenca = n - document.getElementById("tempoChegada").value;
				
				document.getElementById("logTempoDica4Para5").value = diferenca;
				
				var divID = "minhaDivHint5"; 
				var divObject = document.getElementById(divID); 
				var currentCssClass = divObject.className; 
				if (divObject.className == "divEscondida"){
					divObject.className = "divVisivel";
					document.getElementById("nroDica").value = 5;
					document.getElementById("btnHint").style.visibility = "hidden";
					document.getElementById("pontosDescontar").value = 4;
				}
				else{
					divObject.className = "divVisivel";
				}
			}			
		}
		
		function CollapseExpandFechar() {
			//armazena o tempo entre quando o aluno abriu a dica 1 e clicou na dica2
			var d = new Date();
			var n = d.getTime();
			var diferenca = n - document.getElementById("tempoChegada").value;
			document.getElementById("logTempoBotaoFechar").value = diferenca;
			
			modalHint.close();
		}
	</script>

<!-- SCRIPTS PARA LOG -->
<script type="text/javascript">
	function antesDoSubmit(){
		var d = new Date();
		var ta = d.getTime();
		var diferenca = ta - document.getElementById("tempoChegada").value;
		document.getElementById("logTempoPeramenciaQuestao").value = diferenca;
		
		document.getElementById("logQtdDicasClicadas").value = document.getElementById("nroDica").value;
	}
	
	function clickRadioButton(){
		var d = new Date();
		var n = d.getTime();
		var diferenca = n - document.getElementById("tempoChegada").value;
		var totalTempo = document.getElementById("logTempoMudancaRadioButton").value + "; " +diferenca;
		document.getElementById("logTempoMudancaRadioButton").value = totalTempo;
		
		var qtdClicks = document.getElementById("logTrocaDeRadioButton").value;
		var total = parseInt(qtdClicks, 10) + 1;
		document.getElementById("logTrocaDeRadioButton").value = total;
	}
	
	function dica1(){
		//armazena o tempo entre quando o aluno abriu a página até ele clicar em dica1
		var d = new Date();
		var n = d.getTime();
		var diferenca = n - document.getElementById("tempoChegada").value;
		document.getElementById("logTempoParaAbrirDica1").value = diferenca;
		document.getElementById("pediuAjuda").value = true;
	}
</script>

<script type="text/javascript">
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.text(minutes + ":" + seconds);

        if (--timer < 0) {
            $('#modalTerminoTempo').modal('show')
        }
    }, 1000);
}

function startTimerDica(duration) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        //display.text(minutes + ":" + seconds);

        if (--timer < 0) {
        	$('#botaoDica').removeClass("btn-primary").addClass("btn-dica");
        }
    }, 1000);
}

jQuery(function ($) {
    var fiveMinutes = 60 * 3,
        display = $('#time');
    startTimer(fiveMinutes, display);
    var timerDica = 30 * 3;
    startTimerDica(timerDica);
});

</script>

</head>

<body onload="verificarBadge(${imagemBadge})"> <!--class="full-width"-->

<section id="container" >

	<section id="main-content"> 
		<section class="wrapper">
	<!-- page start-->
	<div class="row">
		<div class="col-sm-12">
			<section class="panel"> 
				<header class="panel-heading">
					${questoes.titulo} 
					<span class="tools pull-right">
					<c:if test="${chances == 3}">
						<a href="javascript:;" class="fa fa-heart"></a>
			            <a href="javascript:;" class="fa fa-heart"></a>
			            <a href="javascript:;" class="fa fa-heart"></a>
			        </c:if>
			        <c:if test="${chances == 2}">
						<a href="javascript:;" class="fa fa-heart"></a>
			            <a href="javascript:;" class="fa fa-heart"></a>
			            <a href="javascript:;" class="fa fa-heart-o"></a>
			        </c:if>
			        <c:if test="${chances == 1}">
						<a href="javascript:;" class="fa fa-heart"></a>
			            <a href="javascript:;" class="fa fa-heart-o"></a>
			            <a href="javascript:;" class="fa fa-heart-o"></a>
			        </c:if>			        
			        <c:if test="${chances == 0}">
						<a href="javascript:;" class="fa fa-heart-o"></a>
			            <a href="javascript:;" class="fa fa-heart-o"></a>
			            <a href="javascript:;" class="fa fa-heart-o"></a>
			        </c:if>			        
		            </span> 
		            <c:if test="${responder == true}">
		           		 <div><span id="time"></span></div>
		            </c:if>
		         </header>
		         
			
			
			<div class="panel-body">
				<c:if test="${mensagem != null}">
					<div class="row">		
                            <div class="col-md-12 ">
                                <div class="panel-alert">
                                    <div class="panel-heading1">
                                      <i class="fa fa-exclamation-circle"></i> ${mensagem}
                                    </div>
                                    
                                </div>
                         	</div> 
					</div>
				</c:if>
			
				<form name="f1" class="form-horizontal bucket-form" method="get" action="<c:url value="user/verificaQuestao"/>">
					<div class="form-group "style="text-align:center; color:black">
						<label class="control-label col-lg-12 " style="color: black">${questoes.pergunta}</label>
						<c:if test="${not empty questoes.image}">
							<br>
							<img align="middle" src="images/questoes/${questoes.image}">
						</c:if>
					</div>
					
					
					
					<c:if test="${responder == true}">
					<div class="form-group" >
						<label class="col-sm-3 control-label col-lg-3" for="inputSuccess"></label>
						<div class="col-lg-6" style="color: black">
							<div class="radio">
								<label style="color: black"> <input type="radio" name="respostaAluno" id="respostaAluno1" value="alternativa1" onclick="clickRadioButton()">${questoes.alternativa1}	</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="respostaAluno" id="respostaAluno2" value="alternativa2" onclick="clickRadioButton()">${questoes.alternativa2} </label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="respostaAluno" id="respostaAluno3" value="alternativa3" onclick="clickRadioButton()">${questoes.alternativa3}	</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="respostaAluno" id="respostaAluno4" value="alternativa4" onclick="clickRadioButton()">${questoes.alternativa4}	</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="respostaAluno" id="respostaAluno5" value="alternativa5" onclick="clickRadioButton()">${questoes.alternativa5}	</label>
							</div>

						</div>
					</div>
					</c:if>
					
					<c:if test="${responder == false}">
					<div class="form-group" >
						<label class="col-sm-3 control-label col-lg-3" for="inputSuccess"></label>
						<div class="col-lg-6" style="color: black">
							<div class="radio" >
									<label> <input type="radio" name="respostaAluno" id="optionsRadios1" value="alternativa1" disabled="disabled">${questoes.alternativa1}</label>
							</div>
							<div class="radio">
									<label> <input type="radio" name="respostaAluno" id="optionsRadios2" value="alternativa2" disabled="disabled">${questoes.alternativa2}</label>
							</div>
							<div class="radio">
									<label> <input type="radio" name="respostaAluno" id="optionsRadios2" value="alternativa3" disabled="disabled">${questoes.alternativa3}</label>
							</div>
							<div class="radio">
									<label> <input type="radio" name="respostaAluno" id="optionsRadios2" value="alternativa4" disabled="disabled">${questoes.alternativa4}</label>
							</div>
							<div class="radio">
									<label><input type="radio" name="respostaAluno" id="optionsRadios2" value="alternativa5" disabled="disabled">${questoes.alternativa5}</label>
							</div>

						</div>
					</div>
					
					</c:if>
					
					<input type="hidden" name="badges" id="badges" value="${avisaBadge}"> 
					<input type="hidden" name="badgesExtra" id="badgesExtra" value="${avisaBadgeExtra}"> 					
					<input type="hidden" name="pediuAjuda" id="pediuAjuda" value=""/> 
					<input type="hidden" name="questoes.id" value="${questoes.id}"/>
					<input type="hidden" name="respostaCerta" value="${questoes.respostaCerta}"/>
					<input type="hidden" name="acertou" id="acertou" value="${acertou}" />
					<input type="hidden" name="pontosDescontar" id="pontosDescontar" value="0" />
					<input type="hidden" name="nroDica" id="nroDica" value="1" />
					
					<input type="hidden" name="tempoChegada" id="tempoChegada" value="">
					
					<input type="hidden" name="logQuestoes.id" id="logId" value="${logQuestoes.id}">
					<input type="hidden" name="logQuestoes.idUsuario" id="logIdUsuario" value="${logQuestoes.idUsuario}">
					<input type="hidden" name="logQuestoes.idQuestao" id="logIdQuestao" value="${logQuestoes.idQuestao}">
					<input type="hidden" name="logQuestoes.tempoPermanenciaQuestao" id="logTempoPeramenciaQuestao" value="${logQuestoes.tempoPermanenciaQuestao}"> 
					<input type="hidden" name="logQuestoes.trocaDeRadioButton" id="logTrocaDeRadioButton" value="${logQuestoes.trocaDeRadioButton}">
					<input type="hidden" name="logQuestoes.qtdDicasClicadas" id="logQtdDicasClicadas" value="${logQuestoes.qtdDicasClicadas}">
					<input type="hidden" name="logQuestoes.tempoParaAbrirDica1" id="logTempoParaAbrirDica1" value="${logQuestoes.tempoParaAbrirDica1}">
					<input type="hidden" name="logQuestoes.tempoDica1Para2" id="logTempoDica1Para2" value="${logQuestoes.tempoDica1Para2}">
					<input type="hidden" name="logQuestoes.tempoDica2Para3" id="logTempoDica2Para3" value="${logQuestoes.tempoDica2Para3}">
					<input type="hidden" name="logQuestoes.tempoDica3Para4" id="logTempoDica3Para4" value="${logQuestoes.tempoDica3Para4}">
					<input type="hidden" name="logQuestoes.tempoDica4Para5" id="logTempoDica4Para5" value="${logQuestoes.tempoDica4Para5}">
					<input type="hidden" name="logQuestoes.tempoBotaoFechar" id="logTempoBotaoFechar" value="${logQuestoes.tempoBotaoFechar}">
					<input type="hidden" name="logQuestoes.tempoMudancaRadioButton" id="logTempoMudancaRadioButton" value="${logQuestoes.tempoMudancaRadioButton}">
					<input type="hidden" name="logQuestoes.tempoEsgotado" id="tempoEsgotado" value="">
					<input type="hidden" name="tempoFeedback" id="tempoFeedback" value="">
					
					<c:if test="${responder == true }">
						 <c:if test="${!empty qtdHint.value}">
                             <c:set var="flag" value="#modalAjuda"></c:set>
                         </c:if>
	                             
							<div class="left">
							 <!-- 
								<a data-toggle="modal" class="btn btn-primary btn-dfn" href="#modalAprenda">Aprenda <i class="fa  fa-video-camera"></i></a>
								  -->
								<a data-toggle="modal" onclick="dica1()" class="btn btn-primary" id="botaoDica" href="#modalHint">Dica <i class="fa fa-star"></i> </a> 

							</div>
									
									
							<div class="right">
							<!-- 	<a data-toggle="modal" id="a" class="btn btn-info btn-lg" onclick="return check('${questoes.respostaCerta}')">Verificar
								<i class="fa fa-arrow-right"></i></a>
								 --> 
								<button onclick="antesDoSubmit()" type="submit" class="btn btn-warning btn-lg">Verifica <i class="fa fa-check"></i></button>
									
							</div>
							
					</c:if>
				
						<c:if test="${acertou == false && responder == false}">
							<div class="row">		
		                            <div class="col-md-12 ">
		                                <div class=" panel-danger">
		                                    <div class="panel-heading ">
		                                      <img style="margin-right:10px;" alt="" align="left" src="images/erro.png">
		                                       <h4>Resposta errada</h4>
												 Você tem mais ${chances} chances.</a>
												<div class="right">
													<c:if test="${chances != 0 }">
														<button onclick="btnSubmit('Tentar')" class="btn btn-warning btn-lg">Tente mais uma vez <i class="fa fa-check"></i></button>
													</c:if>
													<button onclick="btnSubmit('Continuar')" class="btn btn-info btn-lg">Próxima <i class="fa fa-arrow-right"></i></button>
												</div>
		                                    </div>
		                                    
		                                </div>
		                         	</div> 
							</div>
						</c:if>
						
						<c:if test="${acertou == true && responder == false}">
							<div class="row">		
		                            <div class="col-md-12 ">
		                                <div class=" panel-success" >
		                                    <div class="panel-heading " style="height: 110px">
		                                      <img style="margin-right:10px;" alt="" align="left" src="images/certo.png">
		                                       <h4>Resposta certa!</h4>
												 <div class="right">
													<button onclick="btnSubmit('Continuar')" class="btn btn-info btn-lg">Continuar <i class="fa fa-arrow-right"></i></button>
												</div>
												
		                                    </div>
		                                </div>
		                         	</div> 
							</div>
						</c:if>						
						
					
				</form>
				</div>
			</div>
		</div>
						
	</div>
    </section>
		<!-- page end-->
  </section>
    <!--main content end-->
</section>

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
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modalTerminoTempo" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="alert alert-success alert-block fade in">
                                <!--<button data-dismiss="alert" class="close close-sm" type="button">
                                    <i class="fa fa-times"></i>
                                </button>-->
                                <h3>
                                    <i class="icon-ok-sign"></i>
                                    Tempo esgotado!
                                </h3>
                                <h4><p>Você esgotou o tempo para essa questão.</p> </h4>
                                <br>
                                	<a id="btnFechar" data-toggle="modal" class="btn btn-danger btn-dfn" onclick="tempoEsgotado()">Próxima  <i class="fa fa-arrow-right"></i> </a>
                            </div>
                  </div>
              </div>
          </div>
          
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modalNovoBadge" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="alert alert-success alert-block fade in">
                                <!--<button data-dismiss="alert" class="close close-sm" type="button">
                                    <i class="fa fa-times"></i>
                                </button>-->
                                <h3>
                                    <i class="icon-ok-sign"></i>
                                    <td width="10%"><img style="width: 50px; height: 50px;" alt="" align="left" src="images/badges/primeiro.png"></td>
							    	<td width="60%"><h4><i class="icon-ok-sign"></i>PARABÉNS!</h4></td>
                                </h3>
                                <h4>
                                <p>Você ganhou um NOVO BADGE!</p></h4>
                                <br>
                                	<a id="btnFechar" data-dismiss="modal" class="btn btn-danger btn-dfn">Ok  <i class="fa fa-gift"></i> </a>
                            </div>
                  </div>
              </div>
          </div>
          
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modalBadgeExtra" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="alert alert-success alert-block fade in">
                                <!--<button data-dismiss="alert" class="close close-sm" type="button">
                                    <i class="fa fa-times"></i>
                                </button>-->
                                <h3>
                                    <i class="icon-ok-sign"></i>
                                    <td width="10%"><img style="width: 50px; height: 50px;" alt="" align="left" src="images/trofeus/highfive.png"></td>
							    	<td width="60%"><h4><i class="icon-ok-sign"></i>UAU!</h4></td>
                                </h3>
                                <h4>
                                <p>Você ganhou um BADGE EXTRA!!!</p></h4>
                                <br>
                                	<a id="btnFechar" data-dismiss="modal" class="btn btn-danger btn-dfn">Ok  <i class="fa fa-gift"></i> </a>
                            </div>
                  </div>
              </div>
          </div>
          <!-- modal -->
		  
		  
			  <!-- Modal ajuda -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modalHint" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="alert alert-success alert-block fade in" style="color: black">
                      		<table style="width:100%">
							  <tr>
							    <td width="10%"><img style="width: 50px; height: 50px;" alt="" align="left" src="images/lampada.png"></td>
							    <td width="60%"><h4><i class="icon-ok-sign"></i>DICAS:</h4></td>		
							    <td>
							    <div  id="pontos" style="color: green"> 
									<img src="images/badges/pts.png" height="40px"alt=""> ${userWeb.pontos}
								</div></td>
							  </tr>
							</table>
                                <b> Você pode ver até a dica 3 de graça! <br> 
                                Compre: <br>
                                 &nbsp Dica 4: 2 moedas <br>
                                 &nbsp Dica 5: 4 moedas</b>
										<br><br><br>
                                	<div>
                                		<p><strong>DICA 1:</strong></p>
                                		<p>${questoes.hint1}</p>
                                	</div>
                                	<div id="minhaDivHint2" class="divEscondida">
                                		<p><strong>DICA 2:</strong></p>
										<p>${questoes.hint2}</p>
									</div>
									<div id="minhaDivHint3" class="divEscondida">
										<p><strong>DICA 3:</strong></p>
										<p>${questoes.hint3}</p>
									</div>
									<div id="minhaDivHint4" class="divEscondida">
										<p><strong>DICA 4:</strong></p>
										<p>${questoes.hint4}</p>
									</div>
									<div id="minhaDivHint5" class="divEscondida">
										<p><strong>DICA 5:</strong></p>
										<p>${questoes.hint5}</p>
									</div>									
                                	<a id="btnHint" data-toggle="modal" class="btn btn-warning btn-dfn" onclick="return CollapseExpand()">Proxima dica <i class="fa fa-arrow-right"></i> </a>
                                	<a id="btnFechar" data-dismiss="modal" class="btn btn-danger btn-dfn" onclick="return CollapseExpandFechar()">Fechar  <i class="fa fa-close"></i> </a>
                                	<br><br>
									                             	
                            </div>
                  </div>
              </div>
          </div>
          <!-- modal -->
          
		  
		  <!-- Modal ajuda -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modalAprenda" class="modal fade">
              <div style="margin-top:100px">
			  <div class="modal-dialog">
                <div class="modal-content">
                      <div class="alert alert-success alert-block fade in">
                      		<table style="width:100%">
							  <tr>
							    <td width="10%"><img style="width: 50px; height: 50px;" alt="" align="left" src="images/book.png"></td>
							    <td width="60%"><h4><i class="icon-ok-sign"></i>TÍTULO DO CONTEÚDO:</h4></td>		
							    <td></td>
							  </tr>
							</table>
                                
										<br><br><br>
                                	<div>
                                		<p><strong>conteúdo aqui</strong></p>
                                	</div>
                                				
                                	<a id="btnFechar" data-dismiss="modal" class="btn btn-danger btn-dfn" onclick="return CollapseExpandFechar()">Fechar  <i class="fa fa-close"></i> </a>
                                	<br><br>
									                             	
                            </div>
                  </div>
				</div>
			</div>
		  </div>
          <!-- modal -->


	<script>
		function reset () {
			$("#toggleCSS").attr("href", "../themes/alertify.default.css");
			alertify.set({
				labels : {
					ok     : "OK",
					cancel : "Cancel"
				},
				delay : 5000,
				buttonReverse : false,
				buttonFocus   : "ok"
			});
		}

		// ==============================
		// Standard Dialogs
		$("#alert").on( 'click', function () {
			reset();
			alertify.alert("This is an alert dialog");
			return false;
		});

	
	</script>

</body>
</html>