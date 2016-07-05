<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="images/favicon.html">

<!--Core CSS -->
<link href="./bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="./css/bootstrap-reset.css" rel="stylesheet">
<link href="./assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

<link rel="stylesheet" href="./css/alertify/alertify.min.css" />
<link rel="stylesheet" href="./css/alertify/alertify.css" />
<link rel="stylesheet" href="./css/alertify/themes/default.min.css" />


<!-- Custom styles for this template -->
<link href="./css/style.css" rel="stylesheet">
<link href="./css/style-responsive.css" rel="stylesheet" />

<!-- GUIDE -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" />
<link href="./js/guidely/guidely.css" rel="stylesheet" />

<title>E-Game</title>
	<script type="text/javascript">
		function check(respostaCerta) {
			
			if(document.getElementById("viuDica").value != 1){
				alert("Antes de continuar, clique nas dicas para aprender como é.");
				return false;
			}
			
			var resposta = document.getElementsByName("optionsRadios");
			var c = respostaCerta;
	
			for (var i = 0; i < resposta.length; i++) {
				if (resposta[i].checked) {
					if (resposta[i].value == respostaCerta) {
						document.getElementById("resposta").value = "true";
								document.forms["f1"].action = "<c:url value="/user/proximaQuestaoTour"/>";
								document.forms["f1"].submit();
					} else{
						document.getElementById("resposta").value = "false";
								document.forms["f1"].action = "<c:url value="/user/proximaQuestaoTour"/>";
								document.forms["f1"].submit();
					}
				}
			}
		}
		
		function btnSubmit(escolha) {
			var resposta = document.getElementsByName("optionsRadios");
			var c = escolha;
	
			if (c == 'Continuar') {
				document.getElementById("resposta").value = "true";
				document.forms["f1"].action = "<c:url value="/user/proximaQuestaoTeste"/>";
				document.forms["f1"].submit();
			}
			else if(c == 'Tentar'){
				document.getElementById("resposta").value = "true";
				document.forms["f1"].action = "<c:url value="/user/voltaQuestaoGuide"/>";
				document.forms["f1"].submit();
			}
		}
		
		function pediuAjuda(){
			document.getElementById("viuDica").value = 1;
		}
		
		function pediuAjuda1(hint1){
			var hint1 = hint1;
			alertify.prompt(hint1, 'some value', function(evt, value){ alertify.message('You entered: ' + value);});
			document.getElementById("pediuAjuda").value = "true";
		}
		
		function maisDica(){
			<c:set var="dica" value="${questao.hint2}"></c:set>
			alert("<c:out value="${dica}"/>");
		}
		
		function tempoEsgotado(){
			document.getElementById("tempoEsgotado").value = true;
			document.forms["f1"].action = "<c:url value="user/proximaQuestaoTeste"/>";
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
				var divID = "minhaDivHint2"; 
				var divObject = document.getElementById(divID); 
				var currentCssClass = divObject.className;
				if (divObject.className == "divEscondida"){
					divObject.className = "divVisivel"; 
					document.getElementById("nroDica").value = 2;
				}
				else divObject.className = "divVisivel";
			}
			else if(nroDica == "2"){
				var divID = "minhaDivHint3"; 
				var divObject = document.getElementById(divID); 
				var currentCssClass = divObject.className; 
				if (divObject.className == "divEscondida"){
					divObject.className = "divVisivel"; 
					document.getElementById("nroDica").value = 3;
				}
				else divObject.className = "divVisivel"; 
			}
			else if(nroDica == "3"){
				var divID = "minhaDivHint4"; 
				var divObject = document.getElementById(divID); 
				var currentCssClass = divObject.className; 
				if (divObject.className == "divEscondida"){
					divObject.className = "divVisivel";
					document.getElementById("nroDica").value = 4;
				}
				else divObject.className = "divVisivel";
			}
			else if(nroDica == "4"){
				var divID = "minhaDivHint5"; 
				var divObject = document.getElementById(divID); 
				var currentCssClass = divObject.className; 
				if (divObject.className == "divEscondida"){
					divObject.className = "divVisivel";
					document.getElementById("nroDica").value = 5;
					document.getElementById("btnFechar").style.visibility = "visible";
					document.getElementById("btnHint").style.visibility = "hidden";
				}
				else divObject.className = "divVisivel";
			}
		}
		
		function CollapseExpandFechar() {
			modalHint.close();
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
		
		jQuery(function ($) {
		    var fiveMinutes = 60 * 2,
		        display = $('#time');
		    startTimer(fiveMinutes, display);
		});
	
	</script>

</head>


<body>
 
<section id="container" >
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-sm-12">
					<section class="panel"> 
						<header class="panel-heading"> Questão 1  </header>
						
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
		            
		            <div id="target-4"><span id="time"></span></div>
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
						
						<c:set var="nroDica" value="0"></c:set>
						<c:set var="dica" value="${questao.hint1}"></c:set>

						<div id="target-3" class="panel-body">	
							<form name="f1" class="form-horizontal bucket-form" method="get" action="<c:url value="user/proximaQuestaoTeste"/>">
					
								<div class="form-group ">
									<label class="control-label col-lg-12 ">${questao.pergunta}</label>
									<c:if test="${not empty questao.image}">
										<br>
										<img src="images/questoes/${questao.image}">
									</c:if>
								</div>
								
								<div   class="form-group" >
									<label class="col-sm-3 control-label col-lg-3" for="inputSuccess"></label>
									<div class="col-lg-6">
										<div class="radio">
											<label> <input type="radio" name="optionsRadios" id="optionsRadios1" value="alternativa1">${questao.alternativa1}
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="optionsRadios" id="optionsRadios2" value="alternativa2">${questao.alternativa2}
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="optionsRadios" id="optionsRadios2" value="alternativa3">${questao.alternativa3}
											</label>
										</div>
										<div class="radio">
											<label> 
												<input type="radio" name="optionsRadios" id="optionsRadios2" value="alternativa4">${questao.alternativa4}
											</label>
										</div>
										<div class="radio">
											<label> 
												<input type="radio" name="optionsRadios" id="optionsRadios2" value="alternativa5">${questao.alternativa5}
											</label>
										</div>
			
									</div>
								</div>
								
								
	      						<c:if test="${'alternativa1' == questao.respostaCerta}">
									<c:set var="alternativaCerta" value="${questao.alternativa1}"></c:set>
								</c:if>
								<c:if test="${'alternativa2' == questao.respostaCerta}">
									<c:set var="alternativaCerta" value="${questao.alternativa2}"></c:set>
								</c:if>
								<c:if test="${'alternativa3' == questao.respostaCerta}">
									<c:set var="alternativaCerta" value="${questao.alternativa3}"></c:set>
								</c:if>
								<c:if test="${'alternativa4' == questao.respostaCerta}">
									<c:set var="alternativaCerta" value="${questao.alternativa4}"></c:set>
								</c:if>
								<c:if test="${'alternativa5' == questao.respostaCerta}">
									<c:set var="alternativaCerta" value="${questao.alternativa5}"></c:set>
								</c:if>
	      		

								<input type="hidden" name="questoes.id" value="${questao.id}"/>
								<input type="hidden" name="resposta" id="resposta" value="" />
								<input type="hidden" name="viuDica" id="viuDica" value=""  />
								
								
									
								 <c:if test="${!empty qtdHint.value}">
	                               	<c:set var="flag" value="#modalAjuda"></c:set>
	                             </c:if>
				                  
				                  <c:if test="${responder != false}">           
										<div id="target-5" class="left">
										<!-- 
										   <a data-toggle="modal" class="btn btn-primary btn-dfn" href="#modalAprenda">Aprenda <i class="fa  fa-video-camera"></i></a>
										    -->
											<a data-toggle="modal" class="btn btn-warning btn-dfn" href="#modalHint" onclick="pediuAjuda()">Dicas <i class="fa fa-star"></i> </a> 
			
										</div>
														
										<input type="hidden" name="viuDica" id="viuDica" />
										<div id="target-6" class="right">
											<a data-toggle="modal" id="a" class="btn btn-info btn-lg" onclick="return check('${questao.respostaCerta}')">Verificar 
												<i class="fa fa-check"></i></a>
										</div>
								
								
									</c:if>
								
								
									<c:if test="${acertou == false && responder == false}">
										<div class="row">		
					                            <div class="col-md-12 ">
					                                <div class="panel-danger">
					                                    <div class="panel-heading ">
					                                      <img style="margin-right:10px;" alt="" align="left" src="images/erro.png">
					                                       <h4>Resposta errada!</h4>
					                                       	Você tem mais ${chances} chances
																<div class="right">
																	<c:if test="${chances != 0 }">
																		<button onclick="btnSubmit('Tentar')" class="btn btn-warning btn-lg">Tente mais uma vez <i class="fa fa-check"></i></button>
																	</c:if>
																	<button onclick="btnSubmit('Continuar')" class="btn btn-info btn-lg">Continuar <i class="fa fa-arrow-right"></i></button>
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
																<button type="submit" class="btn btn-info btn-lg">Continuar <i class="fa fa-arrow-right"></i></button>
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
    	</section>
    </section>
</section>



	<script src="./js/lib/jquery.js"></script> 
	<script	src="./bs3/js/bootstrap.min.js"></script> 
	<script class="include"	type="text/javascript" src="./js/accordion-menu/jquery.dcjqaccordion.2.7.js"></script> 
	<script src="./js/scrollTo/jquery.scrollTo.min.js"></script>
	<script src="./js/nicescroll/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="js/scripts.js"></script> <!-- Modal -->

<script src="./js/jquery-1.7.2.min.js"></script>

<script src="./js/bootstrap.js"></script>
<script src="./js/base.js"></script>

<c:if test="${userWeb.primeiroAcesso == true}">
	<script src="./js/guidely/guidely.min.js"></script> <script>
		$(function() {
			guidely
					.add({
						attachTo : '#target-1',
						anchor : 'top-left',
						title : 'PONTOS',
						text : 'Aqui serão contabilizados seus pontos! Cada resposta certa você ganhará 5 pontos!'
					});

			guidely
					.add({
						attachTo : '#target-2',
						anchor : 'top-right',
						title : 'MENU INTERATIVO',
						text : 'Você poderá acompanhar o seu progresso, suas respostas certas e erradas, seus badges e o ranking! A cada 5 respostas certas (não '+ 
								'precisa ser sequencial), você ganhará um NOVO BADGE! Cada 4 badges NOVOS, você será recompensando com um TOP HIGH FIVE para a sua coleção.'+
								'O ranking serão os primeiros 5 colocados dos seus amigos, de acordo com a pontuação de cada um.'
					});

			guidely
					.add({
						attachTo : '#target-3',
						anchor : 'middle-middle',
						title : 'QUESTÕES',
						text : 'Todas as questões a serem respondidas ficarão aqui. Elas serão questões de múltipla escolha com apenas uma alternativa certa.'+
						' Você não poderá passar para a próxima questão sem respondê-la.'
					});
			
			guidely
				.add({
					attachTo : '#target-4',
					anchor : 'middle-middle',
					title : 'TEMPO',
					text : 'Você terá 2 minutos para responder cada questão. Caso esse tempo esgote, você não poderá mais responder e passará para a próxima.'
				});

			guidely
					.add({
						attachTo : '#target-5',
						anchor : 'top-right',
						title : 'APRENDA E DICAS - AJUDA',
						text : 'Aqui você poderá ver as DICAS a qualquer momento. As dicas servem para ajudá-lo a resolver a questão de forma mais fácil.'+
						'Todas as questões terão mais de uma dica, chegando cada vez mais próximo da solução. Entretanto, até a dica número 3 é de graça! Para ver a dica 4 e 5, você poderá comprar.'+
						' A dica 4 é apenas 2 moedas! Para visualizar a dica 5, você poderá comprá-la por 4 moedas!'
					});
			
			guidely
					.add({
						attachTo : '#target-6',
						anchor : 'bottom-left',
						title : 'Verificar resposta',
						text : 'Após assinalar a resposta escolhida, é necessário verificar se a resposta está certa, e aparecerá se você acertou ou errou. '+
						'Após isso, pressione o botão CONTINUAR para ir para a próxima questão.'
					});

			guidely.init({
				welcome : true,
				startTrigger : false
			});

		});
	</script> <!--Core js--> 
	</c:if>
	
	
<!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modalTerminoTempo" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="alert alert-success alert-block fade in">
                                <!--<button data-dismiss="alert" class="close close-sm" type="button">
                                    <i class="fa fa-times"></i>
                                </button>-->
                                <h4>
                                    <i class="icon-ok-sign"></i>
                                    Tempo esgotado!
                                </h4>
                                <p>Você esgotou o tempo para essa questão.</p>
                                <br>
                                	<a id="btnFechar" data-toggle="modal" class="btn btn-danger btn-dfn" onclick="tempoEsgotado()">Próxima  <i class="fa fa-arrow-right"></i> </a>
                            </div>
                  </div>
              </div>
          </div>
          <!-- modal -->
		  
		  
		  <!-- Modal ajuda -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modalHint" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="alert alert-success alert-block fade in">
                      
                      <input type="hidden" name="nroDica" id="nroDica" value="1" />
								
                                <h4><i class="icon-ok-sign"></i>DICAS:
                                <img style="width: 50px; height: 50px;" alt="" align="left" src="images/lampada.png"> </h4>
										<b> Você pode ver até a dica 3 de graça! <br> 
		                                Compre: <br>
		                                 &nbsp Dica 4: 2 moedas <br>
		                                 &nbsp Dica 5: 4 moedas</b>
										<br><br><br>
                                	<div>
                                		<p>A primeira dica sempre será geral sobre o tema.</p>
                                	</div>
                                	<div id="minhaDivHint2" class="divEscondida">
										<p>A segunda dica é um pouco mais específica.</p>
									</div>
									<div id="minhaDivHint3" class="divEscondida">
										<p>Esta será a última dica que você poderá ver sem precisar comprar. A partir da quarta você terá que comprar com as moedas disponíveis.</p>
									</div>
									<div id="minhaDivHint4" class="divEscondida">
										<p>Essa dica é muito valiosa! Se conseguir você poderá responder e acertar a questão!</p>
									</div>
									<div id="minhaDivHint5" class="divEscondida">
										<p>Essa é a dica mais perto da resposta. Com ela você terá a resposta do problema.</p>
									</div>
                                	<a id="btnHint" data-toggle="modal" class="btn btn-warning btn-dfn" onclick="return CollapseExpand()">Proxima dica <i class="fa fa-arrow-right"></i> </a>
                                	<a id="btnFechar" data-dismiss="modal" class="btn btn-danger btn-dfn" onclick="return CollapseExpandFechar()">Fechar<i class="fa fa-arrow-right"></i> </a>
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
                
					<iframe width="640" height="380" src="http://www.youtube.com/embed/kcXefl4hUzs" frameborder="0" wmode="transparent" allowfullscreen></iframe>
				</div>
			</div>
		  </div>
          <!-- modal -->
	
	<!-- modal -->
	

</body>
</html>
