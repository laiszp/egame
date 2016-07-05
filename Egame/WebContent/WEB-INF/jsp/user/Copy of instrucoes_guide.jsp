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
 <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
 <link href="css/bootstrap-reset.css" rel="stylesheet">
 <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

 <!-- Custom styles for this template -->
 <link href="css/style.css" rel="stylesheet">
 <link href="css/style-responsive.css" rel="stylesheet" />

    <link href="js/guidely/guidely.css" rel="stylesheet" /> 
<script src="../js/guidely/guidely.min.js"></script>


<title>E-class</title>

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
						<h3>Guia de Instruções:</h3>
						<input type="button" value="clique para ativar tela cheia" onclick="requestFullScreen()">
							<label class="control-label" style="text-align: justify">Hello ${userWeb.nome}! First of all I would like to thank you for using the E-CLASS
							SOFTWARE! Here you will practice your knowledge and challenge your friends in a fun environment! 
							<br><br>
							E-CLASS is an educational software to help you studying for your school in a different way. The main idea is to have fun... so enjoy it! 
							<br><br>
							Here you will do 30 questions of your favourite subject, but you can take your time to do it, no hurry! Also, there are
							some rules that can help you go through the software with a great sucess!
							<br><br>
							<h3>How does it work?</h3>
							
							Each question right you will WIN 10 POINTS! On your left you will see all the information that you need, or if you need to consult
							this page again. There you will find points, leaderboards, your badges and some other details to help you go through.
							<br><br>
							Also, if you need help, we will help you  just pressing the button <img src="img/helpbutton.PNG">. HOWEVER, 
							each time you ask for help, you will lose 5 points.
							
							<br><br>
							To go for the next question, first you need to press <img src="img/checkbutton.PNG"> and then <img src="img/continuebutton.PNG">. You CAN'T go to
							the next question before checking your answer!
							 </label><p></p>
						</div>          
						<br></br>
						<div class="form-group">
							<div class="col-lg-12 btn btn-info"><strong >All Badges available</strong></div>
						</div>
						
					</form>
                    </div>
                </section>
            </div>
        </div>
        <div class="row">
			<div class="col-sm-12">
                <div class="timeline">

                    
                    <article class="timeline-item alt">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow-alt"></span>

                                    <span class="timeline-icon red">
                                        <i class="fa fa-check"></i>
                                    </span>
                                  <img class="intro" align="left" src="images/trofeus/5.png" height="100px" alt="Albert Einstein">
                                    <h1 class="red">5 corrects - JUST GETTING STARTED</h1>
                                    <p>Here is where everything starts! If you get 5 answers right, you get your first badge! </p>
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
                                    <h1 class="green">10 corrects - MAKING PROGRESS</h1>
                                    <p>Yes, it is possible! Make 10 correct and you will get this great MAKING PROGRESS badge</p>
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
                                    <h1 class="blue">15 corrects - THUMBS UP!</h1>
                                    <p>Wow... wouldn't that be great? 15 questions right and you will get a THUMBS UP for you! One more for your collection!!</p>
                                 
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
                                    <h1 class="purple">20 corrects - GREAT STREAK!</h1>
                                    <p>Rigth on! 20 questions answered right is just a GREAT STREAK! Get 20 questions right to get more this one!</p>
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

                                    <span class="timeline-icon light-green">
                                        <i class="fa fa-check"></i>
                                    </span>
                                    <img class="intro" align="left" src="images/trofeus/25.png" height="100px" alt="Albert Einstein">
                                    <h1 class="light-green">25 corrects - AWESOME STREAK!</h1>
                                    <p>To get this badge, just do an AWESOME job and you will see the consequences!
                                    What an AWESOME student you are with 25 questions right! </p>
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
										<img class="intro" align="left" src="images/trofeus/30.png" height="100px" alt="Albert Einstein">
                                    <h1 class="purple">30 corrects - GENIUS</h1>
                                    <p>With a score like that, you better be a GENIUS! </p>
                                   
 						
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
                                    <p>This one you will get if you get in the 3rd position of the leaderboard!!</p>
                                   
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
                                    <p>This one you will get if you get in the 2nd position of the leaderboard!!! Hard? NO! Just work hard and you will get it!</p>
                                   
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
                                    <h1 class="blue">TOP 1 - CHAMPION</h1>
                                    <p>Yeah, this one is for the CHAMPION of the points! The one that gets more points will be honored with this one!</p>
                                   
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
                                    <p>Did you get more then 4 badges? Get one EXTRA every 4 badges you get and make your collection bigger and HIGH FIVE!!!</p>
                                   
                                </div>
                            </div>
                        </div>
                    </article>      

                </div>
            </div>
        </div>
		
		
		<div style="margin-top:30px;" class="row">
            <div class="col-sm-12">
                <section class="panel">
					
                    <div style="text-align:center;" class="panel-body">
                   		<form action="<c:url value="/questoes"/>">
	                    	<input type="hidden" name="responder" id="responder" value="true" />
	                        <button type="submit" class="btn btn-info btn-lg">Go to questions <i class="fa fa-arrow-right"></i></button>
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


<script src="./js/jquery-1.7.2.min.js"></script>

<script src="./js/bootstrap.js"></script>
<script src="./js/base.js"></script>

<script src="js/guidely/guidely.min.js"></script>

<script>

$(function () {
	
	guidely.add ({
		attachTo: '#target-1'
		, anchor: 'top-left'
		, title: 'Guide Title'
		, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
	});
	
	guidely.add ({
		attachTo: '#target-2'
		, anchor: 'top-right'
		, title: 'Guide Title'
		, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
	});
	
	guidely.add ({
		attachTo: '#target-3'
		, anchor: 'middle-middle'
		, title: 'Guide Title'
		, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
	});
	
	guidely.add ({
		attachTo: '#target-4'
		, anchor: 'top-right'
		, title: 'Guide Title'
		, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
	});
	
	guidely.init ({ welcome: true, startTrigger: false });


});

</script>

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
