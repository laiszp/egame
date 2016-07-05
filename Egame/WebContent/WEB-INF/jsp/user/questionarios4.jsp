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

                        <div id="">
                            <h2>Quarto passo</h2>

                            <section>
                                <form name="formQuestionario4" class="form-horizontal" action="<c:url value="/user/gravaQuestionario4"/>">
                                        
                                        
                                        <div class="form-group">
			                                <label class="col-lg-11 control-label" style="text-align: left">Você gostaria de mais funcionalidades? Se sim, você tem alguma sugestão?</label>
			                                <div class="col-lg-8" style="margin-top: 10px">
			                                    <textarea class="form-control" rows="6" name="questionario4.moreFunctionality"></textarea>
			                                </div>
			                            </div> 
			                            
			                            <div class="form-group">
			                                <label class="col-lg-11 control-label" style="text-align: left">Você acha que o sistema está motivacional suficiente para os alunos? Se a resposta for não, por favor explique para melhorarmos.</label>
			                                <div class="col-lg-8" style="margin-top: 10px">
			                                    <textarea class="form-control" rows="6" name="questionario4.currentlyMotivational"></textarea>
			                                </div>
			                            </div> 
			                            
			                            <div class="form-group">
			                                <label class="col-lg-11 control-label" style="text-align: left">Você gostou do design?</label>
			                                <div class="col-lg-8" style="margin-top: 10px">
			                                    <textarea class="form-control" rows="6" name="questionario4.likeDesign"></textarea>
			                                </div>
			                            </div>
			                            
			                            <div class="form-group">
			                                <label class="col-lg-11 control-label" style="text-align: left">Alguma sugestão para melhorar o design do sistema?</label>
			                                <div class="col-lg-8" style="margin-top: 10px">
			                                    <textarea class="form-control" rows="6" name="questionario4.ideaOfSystem"></textarea>
			                                </div>
			                            </div> 
			                            
			                            <div class="form-group">
			                                <label class="col-lg-11 control-label" style="text-align: left">Você tem alguma outra sugestão para melhorar a interface (design) e outras funcionalidades do sistema?</label>
			                                <div class="col-lg-8" style="margin-top: 10px">
			                                    <textarea class="form-control" rows="6" name="questionario4.otherSuggestions"></textarea>
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
