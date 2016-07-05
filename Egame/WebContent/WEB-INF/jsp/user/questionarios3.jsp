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
                        QUESTIONÁRIO

                    </header>
                    
                    <div class="panel-body">
                    
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

                        <div id="" style="color: black">
                            <section>
                                <form name="formQuestionario3" class="form-horizontal" action="<c:url value="/user/gravaQuestionario3"/>">
                                        
                                        
                                        <h3>Questionário de avaliação da tarefa</h3>
                                        <h4>Para cada frase, por favor indique o quão verdadeira é para você, utilizando a seguinte escala: 
                                        </h4>
                                        <br> 
                                        <div style="text-align: center">
                                        <h4>
                                        	<label>1  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 2 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  3 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 4 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  5 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  6 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  7 </label>
                                        	 <br>
                                        	 </h4>
                                        	 não é verdade &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp um pouco verdade &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp verdade 
                                        </div>
                                        <br>
                                        
                                       

                                        <div class="form-group">
                                            <div class="col-lg-8">
                                                <select class="input-sm m-bot15" name="questionario3.tE1">
					                                <option></option>
					                                <option>1</option>
					                                <option>2</option>
					                                <option>3</option>
					                                <option>4</option>
					                                <option>5</option>
					                                <option>6</option>
					                                <option>7</option>
					                            </select>
					                            <label  class="col-lg-11 control-label" style="text-align: left">Enquanto eu estava fazendo a atividade, eu estava pensando o quanto estava aproveitando.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
                                                <select class="input-sm m-bot15" name="questionario3.tE2">
					                                <option></option>
					                                <option>1</option>
					                                <option>2</option>
					                                <option>3</option>
					                                <option>4</option>
					                                <option>5</option>
					                                <option>6</option>
					                                <option>7</option>
					                            </select>
					                            <label class="col-lg-11 control-label" style="text-align: left">Eu não me senti nervoso(a) enquanto fazia a atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE3">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu senti que foi minha escolha fazer essa atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE4">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu acho que sou muito bom nessa atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE5">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu achei essa atividade muito interessante.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE6">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu me senti tenso durante essa atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE7">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu acho que me sai bem nessa atividade, comparado com outros estudantes.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE8">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Fazer essa atividade foi divertida.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE9">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu me senti tranquilo(a) fazendo essa atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE10">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu gostei muito de fazer essa atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE11">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu não tive muita escolha em fazer essa atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE12">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu estou satisfeito(a) com o meu desempenho nessa atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE13">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu estava ansioso(a) durante a atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE14">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu achei essa atividade muito chata.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE15">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu senti que eu estava fazendo o que eu queria, enquanto eu estava fazendo a atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE16">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Me senti muito competente nesta atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE17">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu achei a atividade muito interessante.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE18">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu me senti pressionado enquanto fazia a atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE19">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu senti obrigação de fazer essa atividade.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE20">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu descreveria essa atividade como muito agradável.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE21">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Eu fiz essa atividade porque eu não tive escolha.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-lg-8">
	                                                <select class="input-sm m-bot15" name="questionario3.tE22">
						                                <option></option>
						                                <option>1</option>
						                                <option>2</option>
						                                <option>3</option>
						                                <option>4</option>
						                                <option>5</option>
						                                <option>6</option>
						                                <option>7</option>
						                            </select>
						                            <label class="col-lg-11 control-label" style="text-align: left">Depois de fazer essa atividade por um tempo, me senti muito competente.</label>
                                            </div>
                                        </div>
                                        
                                        <div class="right">
											<button type="submit" class="btn btn-info btn-lg">Finalizar <i class="fa fa-arrow-right"></i></button>
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
