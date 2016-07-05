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


	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	
	<!-- <script src="js/alertify.min.js"></script> -->
	<link rel="stylesheet" href="css/alertify.core.css" />
	<link rel="stylesheet" href="css/alertify.default.css" id="toggleCSS" />
	
	<link rel="stylesheet" href="css/alertify/alertify.css" />
	<link rel="stylesheet" href="css/alertify/alertify.min.css" />
	<link rel="stylesheet" href="css/alertify/themes/bootstrap.css" />
	<script src="js/alertify/alertify.js"></script>

<title>E-class</title>

<script type="text/javascript">

	function antesSubmeter(disciplina){
		document.getElementById("disciplina").value = disciplina;
	}
</script>

</head>


<body>


<section id="container" >

   <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
        <!-- page start-->
            
<div class="row">
            <div class="col-sm-12">
                <section class="panel">

                    <div class="panel-body">
					
					<form action="<c:url value="/questoes"/>">
						
						<input type="hidden" name="responder" id="responder" value="true" />
						<input type="hidden" name="disciplina" id="disciplina" value="" />
						<div class="form-group">
							<div class="col-lg-12 btn btn-info"><strong >Atividades</strong></div>
						</div>
						
                    	
        <div class="row">
			<div class="col-sm-12">
                <div class="timeline" >
<br></br><br></br>
			<div id="pai" style="margin-left: 155px">
				<article class="timeline-item alt"  >
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow-alt"></span>

                                    <span class="timeline-icon blue">
                                        <i class="fa fa-check"></i>
                                    </span>
                                  <img class="intro" align="right" style="padding-left: 10px" src="images/disciplina/matematica1_cor.png" height="100px" alt="Albert Einstein">
                                    <h1 class="blue">Matemática 1 - 7ª série</h1>
                                    <button type="submit" style="float: right;" class="btn btn-info btn-lg" onclick="antesSubmeter('Sétima série')">Ir para questões</button>
                                </div>
                            </div>
                        </div>
                    </article>
                    
                    <article class="timeline-item">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow"></span>

                                    <span class="timeline-icon red">
                                        <i class="fa fa-check"></i>
                                    </span>
                                  <img class="intro" align="left" style="padding-left: 10px" src="images/disciplina/matematica2_cor.png" height="100px" alt="Albert Einstein">
                                    <h1 class="red">Matemática 1 - 8ª série</h1>
                                    <button type="submit" style="float: left;" class="btn btn-info btn-lg" onclick="antesSubmeter('Oitava série')">Ir para questões</button>
                                </div>
                            </div>
                        </div>
                    </article>
                    
                    <article class="timeline-item alt">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow-alt"></span>
                                    <span class="timeline-icon green">
                                        <i class="fa fa-check"></i>
                                    </span>
                                <img class="intro" align="right" style="padding-left: 10px" src="images/disciplina/matematica2.png" height="100px" alt="Albert Einstein">
                                    <h1 class="green">Matemática 2</h1>
                                    <p>30 questões de matemática 2 nível 1º colegial</p>
                                </div>
                            </div>
                        </div>
                    </article>
                        
                    
                   

                </div>
                </div>
            </div>
        </div>
						
					</form>
					<br><br><br>
					<form action="<c:url value="/instrucoes"/>">
						<button type="submit" class="btn btn-danger btn-lg">Ver instruções <i class="fa fa-arrow-right"></i></button>
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
