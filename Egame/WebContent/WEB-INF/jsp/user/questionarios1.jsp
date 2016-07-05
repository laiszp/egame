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
                            <h2>Primeiro passo</h2>

                            <section>
                                <form name="formQuestionario1" class="form-horizontal" action="<c:url value="/user/gravaQuestionario1"/>">
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label"  style="text-align: left">Ano que você nasceu (ex. 1998):</label>
                                            <div class="col-lg-8" style="margin-top: 10px">
                                                <input type="text" class="form-control" placeholder="Ano de nascimento" name="questionario1.anoNascimento">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label"  style="text-align: left">Quantas horas por dia você usa o computador durante os dias de semana?</label>
                                            <div class="col-lg-12" style="margin-top: 10px">
                                                 <div class="radios" >
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario1.horasDiaSemana" required="required" id="radio-01" value="0 - 2 horas" type="radio" /> 0 - 2 horas
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.horasDiaSemana" id="radio-02" value="3 - 5 horas" type="radio" /> 3 - 5 horas
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.horasDiaSemana" id="radio-02" value="6 - 8 horas" type="radio" /> 6 - 8 horas
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.horasDiaSemana" id="radio-02" value="over 8 horas" type="radio" /> over 8 horas
									                </label>
									            </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">Quantas horas por dia você usa o computador durante os fins de semana?</label>
                                            <div class="col-lg-12" style="margin-top: 10px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario1.horasDiaFds" required="required" id="radio-01" value="0 - 2 horas" type="radio" /> 0 - 2 horas
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.horasDiaFds" id="radio-02" value="3 - 5 horas" type="radio" /> 3 - 5 horas
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.horasDiaFds" id="radio-02" value="6 - 8 horas" type="radio" /> 6 - 8 horas
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.horasDiaFds" id="radio-02" value="mais de 8 horas" type="radio" /> mais de 8 horas
									                </label>
									            </div>
                                            </div>
                                        </div> 
                                                                              
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">Eu usualmente jogo em computadores ou video games:</label>
                                            <div class="col-lg-12" style="margin-top: 10px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario1.playComputerVideoGames" required="required" id="radio-01" value="Todo dia" type="radio" /> Todo dia
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.playComputerVideoGames" id="radio-02" value="Toda semana" type="radio" /> Toda semana
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.playComputerVideoGames" id="radio-02" value="Ocasionalmente" type="radio" /> Ocasionalmente
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.playComputerVideoGames" id="radio-02" value="Raramente" type="radio" /> Raramente
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.playComputerVideoGames" id="radio-02" value="Nunca" type="radio" /> Nunca
									                </label>
									            </div>
                                            </div>
                                        </div> 
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">Eu me consideraria:</label>
                                            <div class="col-lg-12" style="margin-top: 10px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario1.considerMyself" required="required" id="radio-01" value="Hardcore gamer" type="radio" /> Jogador intenso
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.considerMyself" id="radio-02" value="Entre hardcore e casual" type="radio" /> Algo entre jogador intenso e casual
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.considerMyself" id="radio-02" value="Casual" type="radio" /> Jogador casual
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.considerMyself" id="radio-02" value="Nao sei" type="radio" /> Não tenho nem ideia
									                </label>
									            </div>
                                            </div>
                                        </div>   
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">Eu prefiro as seguintes formas de jogar jogos:</label>
                                            <div class="col-lg-12" style="margin-top: 10px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario1.wayOfPlayGames" required="required" id="radio-01" value="Single player alone" type="radio" /> Modo de um jogador (single player)
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.wayOfPlayGames" id="radio-02" value="Single player with other people helping or pad-passing" type="radio" /> Modo de um jogador com a ajuda de outra pessoa
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.wayOfPlayGames" id="radio-02" value="Multiplayer, in the same room" type="radio" /> Multijogador, na mesma sala (multiplayer)
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.wayOfPlayGames" id="radio-02" value="Multiplayer, over the internet" type="radio" /> Multijogador, na internet
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.wayOfPlayGames" id="radio-02" value="Team play or Clan over the internet" type="radio" /> Jogos com time ou Clan, na internet
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.wayOfPlayGames" id="radio-02" value="Virtual worlds or MMORPGs" type="radio" /> Mundos virtuais ou MMORPGs
									                </label>
									            </div>
                                            </div>
                                        </div>  
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">As histórias nos jogos de video game para mim são:</label>
                                            <div class="col-lg-12" style="margin-top: 10px">
                                                 <div class="radios">
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-01">
									                    <input name="questionario1.videoGamesStories" required="required" id="radio-01" value="Stories are very important to my enjoyment of videogames" type="radio" /> Histórias são muito importantes para o aproveitamento do jogo
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.videoGamesStories" id="radio-02" value="Stories can help me enjoy a videogame" type="radio" /> Histórias me ajudam a gostar do jogo
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.videoGamesStories" id="radio-02" value="Stories are not important to me in videogames" type="radio" /> Histórias não são importantes para mim nos jogos
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.videoGamesStories" id="radio-02" value="I prefer videogames without stories" type="radio" /> Eu prefiro jogos sem histórias
									                </label>
									                <label class="label_radio col-lg-6 col-sm-6" for="radio-02">
									                    <input name="questionario1.videoGamesStories" id="radio-02" value="I don't play videogames" type="radio" /> Eu não jogo
									                </label>
									            </div>
                                            </div>
                                        </div>  
                                        
                                        <div class="form-group">
                                            <label class="col-lg-11 control-label" style="text-align: left">Nomeie três jogos do qual você gosta de jogar (não precisa ser video games ou jogos de computador - qualquer jogo que você goste)</label>
                                            <div class="col-lg-8">
                                                <input style="margin-top:10px;" type="text" class="form-control" placeholder="Game 1" name="questionario1.game1">
                                                <input style="margin-top:10px;" type="text" class="form-control" placeholder="Game 2" name="questionario1.game2">
                                                <input style="margin-top:10px;" type="text" class="form-control" placeholder="Game 3" name="questionario1.game3">
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
