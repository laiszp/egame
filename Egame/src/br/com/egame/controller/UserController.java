package br.com.egame.controller;


import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import org.apache.log4j.Logger;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.caelum.vraptor.view.Results;
import br.com.egame.dao.UserDAO;
import br.com.egame.infra.AutorizacaoInterceptor.Restrito;
import br.com.egame.modelo.BadgesUser;
import br.com.egame.modelo.Disciplina;
import br.com.egame.modelo.LogQuestoes;
import br.com.egame.modelo.Questionario1;
import br.com.egame.modelo.Questionario2;
import br.com.egame.modelo.Questionario3;
import br.com.egame.modelo.Questionario4;
import br.com.egame.modelo.Questoes;
import br.com.egame.modelo.Respostas;
import br.com.egame.modelo.TempoFeedback;
import br.com.egame.modelo.User;
import br.com.egame.modelo.UserWeb;

@Resource
public class UserController {
	
	private final UserDAO dao;
	private final Result result;
	private final Validator validator;
	private final UserWeb userWeb;
	private Questoes questaoTour;
	
	private static final Logger logger = Logger.getLogger(UserController.class);
	
	public UserController(UserDAO dao, Result result, Validator validator, UserWeb userWeb){
		this.dao = dao;
		this.result = result;
		this.validator = validator;
		this.userWeb = userWeb;
	}
	
	@Get("login")
	public void login(String mensagem){
		if(userWeb.isLogado()){
			userWeb.logout();
		}
		result.include("mensagem", mensagem);
	}
	
	/**REGISTRO DE USUARIO*/
	@Path("/registrar")
	public void registrar(){
		
	}
	
	@Path("/user/salvaRegistro")
	public void salvaRegistro(User user){
		user.setGamificado(true);
		user.setTipo("Aluno");
		user.setPrimeiroAcesso(true);
		dao.salvaUser(user);
		result.redirectTo(this).login("Cadastro realizado com sucesso! Faça agora o seu login com usuário e senha criados.");
	}
	
	
	/**VALIDA O LOGIN E CARREGA TUDO QUE PRECISA*/
	@Path("/validalogin")
	public void valida_login(User user){
		System.out.println("user: " +user.getSenha());
		System.out.println("user: " +user.getUsuario());
		User carregado = dao.carregaAdmin(user);
		
		/**Usuario não existe*/
		if((carregado == null) || (user == null)){
			logger.info("Usuario carregado não existe - retornou null");
//			validator.add(new ValidationMessage("Login e/ou senha inválidos", "user.login"));
//			validator.onErrorUse(Results.page()).redirectTo("/login");
			result.redirectTo(this).login("Login e/ou senha inválidos. Se não é cadastrado, registre-se no link abaixo.");
		}
		else{
			userWeb.login(carregado);
			userWeb.setQuestaoAtual(0);
			userWeb.setHint(0);
			userWeb.setQtdDicas(0);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			userWeb.setProgresso(0);
			userWeb.setPrimeiroAcesso();
			userWeb.setChances(3); //seta as chances que ele tem para tentar as alternativas - tem que ser alterado a cada questao!!!!
	
			leaderBoard();
			
			logger.info("ID do usuario logado: " +userWeb.getId()+ ", NOME: " +userWeb.getNome());
			logger.info("Tipo do usuario: "+carregado.getTipo());
			logger.debug("usuario logado");
			
	//		result.redirectTo(this).questoes(false, true, false);
			if(userWeb.getTipo().equals("Aluno") && userWeb.isPrimeiroAcesso()){
				result.redirectTo(this).instrucoes_guide();
			}
			else if(userWeb.getTipo().equals("Aluno") && !userWeb.isPrimeiroAcesso())
				result.redirectTo(this).evolucao();
			else{
				result.redirectTo(AdministradorController.class).homeadministrador();
			}
		}
	}
	
	@Path("/logout")
	public void logout(String mensagem){
		dao.salvaUserLogado(userWeb.getUserLogado());
		logger.info(userWeb.getNome() +" fez LOGOUT");
		userWeb.logout();
		result.redirectTo(UserController.class).login(mensagem);
	}
	
	@Restrito
	@Path("/evolucao")
	public void evolucao(){
		
	}
	
	
	@Restrito
	@Path("/questoes")
	public void questoes(boolean incrementa, boolean responder, boolean acertou, String mensagem, String disciplina){
		
		//fazer depois outras verificações para pegar as questões certas
		if(disciplina != null ){
			Disciplina d = dao.getDisciplina(disciplina);
			userWeb.setIdDisciplina(d.getId());
		}
			
		
		
		System.out.println("entrou no questoes");
		
		List<Questoes> questoes = dao.getQuestoes(userWeb.getIdDisciplina());
		if(incrementa){
			logger.info(userWeb.getId()+" - "+userWeb.getNome()+" - PRÓXIMA QUESTÃO");
			
			System.out.println("INCREMENTOU");
			userWeb.setChances(3);
			userWeb.setPontosDescontar(0);
			if(userWeb.getQuestaoAtual() == 19){
				logger.info(userWeb.getId()+" - "+userWeb.getNome()+" - chegou ao final das questões");
				confereBadgeRanking();
				userWeb.setProgresso(100);
				result.redirectTo(this).profile();
			}
			else{
				if(mensagem == null && userWeb.getQuestaoAtual() == 4)
					mensagem = "Lembre-se: você pode pedir dicas a qualquer momento para ajudar a responder as questões!";
				
				if(mensagem == null && userWeb.getQuestaoAtual() == 9)
					mensagem = "Lembre-se: você pode pedir dicas a qualquer momento para ajudar a responder as questões!";
				
				if(mensagem == null && userWeb.getQuestaoAtual() == 14)
					mensagem = "Lembre-se: você pode pedir dicas a qualquer momento para ajudar a responder as questões!";
				
				userWeb.setQuestaoAtual(userWeb.getQuestaoAtual()+1);
				userWeb.setProgresso(userWeb.getProgresso()+ 5);
			}
		}
		
		System.out.println("responder: " +responder);
		
//		if(logQuestoes == null){
			System.out.println("LOG QUESTOES É NULO");
			LogQuestoes logQuestoes = new LogQuestoes();
			logQuestoes.setIdQuestao(questoes.get(userWeb.getQuestaoAtual()).getId());
			logQuestoes.setIdUsuario(userWeb.getId());
//		}
//		else{
//			dao.salvaLog(logQuestoes);
//			logQuestoes = new LogQuestoes();
//			logQuestoes.setIdQuestao(questoes.get(userWeb.getQuestaoAtual()).getId());
//			logQuestoes.setIdUsuario(userWeb.getId());
//		}
		
		System.out.println("QUESTAO ATUAL = " +userWeb.getQuestaoAtual());
		System.out.println("Tamanho da lista de questões: " +questoes.size());
		
		result.include("questoes", questoes.get(userWeb.getQuestaoAtual()))
		.include("responder", responder)
		.include("acertou", acertou)
		.include("chances", userWeb.getChances())
		.include("mensagem", mensagem)
		.include("hint", "#modalHint"+userWeb.getHint())
		.include("logQuestoes", logQuestoes);
		
		
	}
	
	@Restrito
	@Path("user/verificaQuestao")
	public void verificaQuestao(String nroDica, String respostaAluno, boolean pediuAjuda, String respostaCerta, String pontosDescontar, LogQuestoes logQuestoes){
		logQuestoes.setTimestamp(Calendar.getInstance());
		dao.salvaLog(logQuestoes);
		System.out.println("passou do salvalog");
		if(pediuAjuda){
			userWeb.setPontosDescontar(Integer.parseInt(pontosDescontar));
			userWeb.setHint(Integer.parseInt(nroDica));
			userWeb.setQtdDicas(userWeb.getQtdDicas()+1);
		}
		System.out.println("passou pediu ajuda");
		if(respostaAluno == null){
			logger.info(userWeb.getId()+ " - " +userWeb.getNome()+" - tentou passar sem responder. Questão atual id: "+userWeb.getQuestaoAtual());
			result.redirectTo(this).questoes(false, true, false, "Você deve escolher uma das opções abaixo.", null);
		}
		//verifica se a resposta está certa, retorna (ultimo retorno) true ou false
		else if(respostaAluno.equals(respostaCerta)){
			logger.info(userWeb.getId()+ " - " +userWeb.getNome()+" - Entrou em VerificaQuestao. Questão atual: "+userWeb.getQuestaoAtual()+ " e acertou: SIM. Dica: "+nroDica);
			userWeb.setQtdAcertos(userWeb.getQtdAcertos()+1);
			int pontosGanhos = 5 - userWeb.getPontosDescontar();
			userWeb.getUserLogado().setPontos(userWeb.getUserLogado().getPontos() + pontosGanhos);
			result.redirectTo(this).questoes(false, false, true, null, null);
		}
		else if(!respostaAluno.equals(respostaCerta)){
			userWeb.setChances(userWeb.getChances()-1);
			logger.info(userWeb.getId()+ " - " +userWeb.getNome()+" - Entrou em VerificaQuestao. Questão atual: "+userWeb.getQuestaoAtual()+ " e acertou: NÃO.Dica: "+nroDica+". Chances restantes: " +userWeb.getChances());
			result.redirectTo(this).questoes(false, false, false, null, null);
		}
	}
    
	@Restrito
	@Path("user/voltaQuestao")
	public void voltaQuestao(String tempoFeedback){
		System.out.println("tempo feedback: " +tempoFeedback);
		
		TempoFeedback tf = new TempoFeedback();
		tf.setIdQuestao(userWeb.getQuestaoAtual()+1);
		tf.setIdUsuario(userWeb.getId());
		tf.setTempo(Integer.parseInt(tempoFeedback));
		dao.salvaTempoFeedback(tf);
		
		logger.info(userWeb.getId()+ " - " +userWeb.getNome()+ " - Voltou a questão "+userWeb.getQuestaoAtual());
		result.redirectTo(this).questoes(false, true, false, null, null);
	}
    
	/**Passa para outra questao*/
	@Restrito
	@Path("user/proximaQuestao")
	public void proximaQuestao(Questoes questoes, boolean acertou, boolean pediuAjuda, int pontos, String respostaCerta, LogQuestoes logQuestoes, String tempoFeedback){
		
		if(logQuestoes.isTempoEsgotado()){
			logger.info(userWeb.getId()+ " - " +userWeb.getNome()+ " - QUESTÃO: "+userWeb.getQuestaoAtual() + " Tempo esgotado para essa questão");
			System.out.println("LOGS: " +logQuestoes.getQtdDicasClicadas());
			dao.salvaLog(logQuestoes);
		}
		else{
			TempoFeedback tf = new TempoFeedback();
			tf.setIdQuestao(userWeb.getQuestaoAtual()+1);
			tf.setIdUsuario(userWeb.getId());
			tf.setTempo(Integer.parseInt(tempoFeedback));
			dao.salvaTempoFeedback(tf);
		}
		
		logger.info(userWeb.getId()+ " - " +userWeb.getNome()+ " - QUESTÃO: "+userWeb.getQuestaoAtual() +" acertou: "+acertou+ " Dica: "+userWeb.getHint());
		Respostas res = new Respostas();
		res.setAcertou(acertou);
		res.setIdQuestao(questoes.getId());
		res.setData(new Timestamp(System.currentTimeMillis()));
		
		res.setIdUser(userWeb.getId());
		res.setQtdTrapaca(0); // COLOCAR AQUI A QTD DE TRAPACAS Q ELE FEZ!!!q
		
		//ATUALIZA GAMIFICACAO DO USUARIO LOGADO
		if(pediuAjuda){
			res.setHint(userWeb.getHint());
		}
		if(!acertou){
			userWeb.setQtdErros(userWeb.getQtdErros()+1);
		}
		
		dao.gravaQuestao(res);
		dao.salvaUserLogado(userWeb.getUserLogado());
		confereBadges();
		leaderBoard();
		confereBadgeExtra();
		result.redirectTo(this).questoes(true, true, false, null, null);
	}
	
	/**TEMPO ESGOTADO*/
	@Restrito
	@Path("user/tempoEsgotado")
	public void tempoEsgotado(LogQuestoes logQuestoes){
		logger.info(userWeb.getId()+ " - " +userWeb.getNome()+ " - QUESTÃO: "+userWeb.getQuestaoAtual() + " Tempo esgotado para essa questão");
		dao.salvaLog(logQuestoes);
		result.redirectTo(this).questoes(true, true, false, null, null);
		
	}
	
	/**INCREMENTA O HINT DO USUARIO*/
	@Restrito
	@Path("user/incrementaHint")
	public void incrementaHint(String hint){
		userWeb.setHint(userWeb.getHint()+1);
		result.redirectTo(this).questoes(false, true, false, null, null);
	}

	/**PAGINA DE INSTRUCOES*/
	@Restrito
	@Path("/instrucoes")
	public void instrucoes(){
		
	}
	
	/**ACESSA PROFILE DO USUARIO*/
	@Restrito
	@Path("/profile")
	public void profile(){
		int posicao = 0;
		List<User> users = dao.getUsersEmOrdemSemLimite();
		for(int i = 0; i<users.size(); i++){
			if(users.get(i).getId() == userWeb.getId()){
				posicao = i+1;
				break;
			}
		}
//		Badges b = dao.getLastBadge(userWeb.getId());
//		String badge;
		result.include("posicao", posicao);
	}
	
	//verifico todas as opcoes para os badges!!!
	public void confereBadges(){
		//verificar 5 acertos
		if(userWeb.getQtdAcertos() == 5 && !userWeb.isGanhou5()){
			BadgesUser badge = new BadgesUser();
			badge.setIdBadge(1);
			badge.setIdUser(userWeb.getId());
			badge.setNovo(true);
			dao.salvaBadgeUser(badge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			userWeb.setGanhou5(true);
			result.include("avisaBadge", "true");
		}
		//verificar 10 acertos
		else if(userWeb.getQtdAcertos() == 10 && !userWeb.isGanhou10()){
			BadgesUser badge = new BadgesUser();
			badge.setIdBadge(2);
			badge.setIdUser(userWeb.getId());
			badge.setNovo(true);
			dao.salvaBadgeUser(badge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			userWeb.setGanhou10(true);
			result.include("avisaBadge", "true");
		}
		//verificar 15 acertos
		else if(userWeb.getQtdAcertos() == 15 && !userWeb.isGanhou15()){
			BadgesUser badge = new BadgesUser();
			badge.setIdBadge(3);
			badge.setIdUser(userWeb.getId());
			badge.setNovo(true);
			dao.salvaBadgeUser(badge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			userWeb.setGanhou15(true);
			result.include("avisaBadge", "true");
			
		}
		//verificar 20 acertos
		else if(userWeb.getQtdAcertos() == 20 && !userWeb.isGanhou20()){
			BadgesUser badge = new BadgesUser();
			badge.setIdBadge(4);
			badge.setIdUser(userWeb.getId());
			badge.setNovo(true);
			dao.salvaBadgeUser(badge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			userWeb.setGanhou20(true);
			result.include("avisaBadge", "true");
		}
		//verificar 25 acertos
		else if(userWeb.getQtdAcertos() == 25 && !userWeb.isGanhou25()){
			BadgesUser badge = new BadgesUser();
			badge.setIdBadge(5);
			badge.setIdUser(userWeb.getId());
			badge.setNovo(true);
			dao.salvaBadgeUser(badge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			userWeb.setGanhou25(true);
			result.include("avisaBadge", "true");
		}
		//verificar 30 acertos
		else if(userWeb.getQtdAcertos() == 30){
			BadgesUser badge = new BadgesUser();
			badge.setIdBadge(6);
			badge.setIdUser(userWeb.getId());
			badge.setNovo(true);
			dao.salvaBadgeUser(badge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			result.include("avisaBadge", "true");
		}
		else
			result.include("avisaBadge", "false");


		
	}
	
	public void confereBadgeRanking(){
		List<User> ranking = userWeb.getUsers();
		
		//verifica 3 lugar ranking		
		if(userWeb.getUserLogado() == ranking.get(2)){
			BadgesUser badge = new BadgesUser();
			badge.setIdBadge(7);
			badge.setIdUser(userWeb.getId());
			badge.setNovo(true);
			dao.salvaBadgeUser(badge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			result.include("avisaBadge", "true");
		}
		else if(userWeb.getUserLogado() == ranking.get(1)){
			BadgesUser badge = new BadgesUser();
			badge.setIdBadge(8);
			badge.setIdUser(userWeb.getId());
			badge.setNovo(true);
			dao.salvaBadgeUser(badge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			result.include("avisaBadge", "true");
		}
		else if(userWeb.getUserLogado() == ranking.get(0)){
			BadgesUser badge = new BadgesUser();
			badge.setIdBadge(9);
			badge.setIdUser(userWeb.getId());
			badge.setNovo(true);
			dao.salvaBadgeUser(badge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			result.include("avisaBadge", "true");
		}
		else
			result.include("avisaBadge", "false");
		
	}
	
	public void confereBadgeExtra(){
		List<BadgesUser> badges = dao.getBadgesUser(userWeb.getId());
		if(badges.size() == 4){
			System.out.println("badges tamanho eh igual a 4");
			BadgesUser newBadge = new BadgesUser();
			newBadge.setIdBadge(10);
			newBadge.setIdUser(userWeb.getId());
			newBadge.setNovo(true);
			dao.salvaBadgeUser(newBadge);
			userWeb.setBadges(dao.getBadges(userWeb.getId()));
			for(BadgesUser bu: badges){
				bu.setNovo(false);
				dao.atualizaBadgeUser(bu);
			}
			result.include("avisaBadgeExtra", "true");
		}
		
	}
	
	public void leaderBoard(){
		List<User> users = dao.getUsersEmOrdem();
		userWeb.setUsers(users);
	}
    
	
	@Path("/questionarios")
	public void questionarios1(){
		
	}
	
	@Path("/user/gravaQuestionario1")
	public void gravaQuestionario1(Questionario1 questionario1){
		questionario1.setIdUser(userWeb.getId());
		dao.salvaQuestionario1(questionario1);
		result.redirectTo(this).questionarios2();
	}
	
	@Path("/questionarios2")
	public void questionarios2(){
		
	}
	
	@Path("/user/gravaQuestionario2")
	public void gravaQuestionario(Questionario2 questionario2){
		questionario2.setIdUser(userWeb.getId());
		dao.salvaQuestionario2(questionario2);
		result.redirectTo(this).questionarios3(null);
	}
	
	@Path("/questionarios3")
	public void questionarios3(String mensagem){
		result.include("mensagem", mensagem);
	}
	
	@Path("/user/gravaQuestionario3")
	public void gravaQuestionario3(Questionario3 questionario3){
		questionario3.setIdUser(userWeb.getId());
		
		if(questionario3.gettE1() == 0 || questionario3.gettE2() == 0 || questionario3.gettE3() == 0){
			result.redirectTo(this).questionarios3("Favor preencher corretamente o questionário");
		}
		else if(questionario3.gettE4() == 0 || questionario3.gettE5() == 0 || questionario3.gettE6() == 0){
			result.redirectTo(this).questionarios3("Favor preencher corretamente o questionário");
		}
		else if(questionario3.gettE7() == 0 || questionario3.gettE8() == 0 || questionario3.gettE9() == 0){
			result.redirectTo(this).questionarios3("Favor preencher corretamente o questionário");
		}
		else if(questionario3.gettE10() == 0 || questionario3.gettE11() == 0 || questionario3.gettE12() == 0){
			result.redirectTo(this).questionarios3("Favor preencher corretamente o questionário");
		}
		else if(questionario3.gettE13() == 0 || questionario3.gettE14() == 0 || questionario3.gettE15() == 0){
			result.redirectTo(this).questionarios3("Favor preencher corretamente o questionário");
		}
		else if(questionario3.gettE16() == 0 || questionario3.gettE17() == 0 || questionario3.gettE18() == 0){
			result.redirectTo(this).questionarios3("Favor preencher corretamente o questionário");
		}
		else if(questionario3.gettE19() == 0 || questionario3.gettE20() == 0 || questionario3.gettE21() == 0){
			result.redirectTo(this).questionarios3("Favor preencher corretamente o questionário");
		}
		else if(questionario3.gettE22() == 0){
			result.redirectTo(this).questionarios3("Favor preencher corretamente o questionário");
		}
		else{
			dao.salvaQuestionario3(questionario3);
			result.redirectTo(this).thankyou();
	//		result.redirectTo(this).questionarios4();
		}
	}
	
	@Path("/questionarios4")
	public void questionarios4(){
		
	}
	
	@Path("/user/gravaQuestionario4")
	public void gravaQuestionario4(Questionario4 questionario4){
		questionario4.setIdUser(userWeb.getId());
		dao.salvaQuestionario4(questionario4);
		result.redirectTo(this).thankyou();
	}
	
	@Path("/thankyou")
	public void thankyou(){
		
	}
	
	@Path("/botaoOk")
	public void botaoOk(){
		result.redirectTo(this).login(null);
	}
	
	
	
	
	/**AREA DO TOUR - QUESTOES TESTE **/
	
	/**PAGINA DE INSTRUCOES*/
	@Restrito
	@Path("/instrucoesguide")
	public void instrucoes_guide(){
		questaoTour = new Questoes();
		
		questaoTour.setPergunta("Aqui ficará a pergunta da questão. Escolha uma das alternativas abaixo e clique em 'Verificar'.");
		questaoTour.setAlternativa1("Opção 1");
		questaoTour.setAlternativa2("Opção 2");
		questaoTour.setAlternativa3("Opção 3");
		questaoTour.setAlternativa4("Opção 4");
		questaoTour.setAlternativa5("Opção 5");
		questaoTour.setRespostaCerta("alternativa4");
		questaoTour.setTitulo("titulo da questao");
		questaoTour.setHint1("dica 1");
		questaoTour.setHint2("dica 2");
		questaoTour.setHint3("dica 3");
		questaoTour.setHint4("dica 4");
		
		result.include("questao", questaoTour)
			.include("chances", userWeb.getChances());
	}
	
	/**Passa para outra questao*/
	@Restrito
	@Path("user/proximaQuestaoTour")
	public void proximaQuestaoTour(boolean resposta){
		
		User u = userWeb.getUserLogado();
		u.setPrimeiroAcesso(false);
		dao.atualizaUser(u);
		
		userWeb.login(dao.carregaAdmin(u));
		userWeb.setPrimeiroAcesso();
		userWeb.setChances(userWeb.getChances()-1);
		String mensagem = null;
		if(!resposta){
			mensagem = "Você pode tentar responder a mesma questão até 3 vezes!";
		}
		
		result.include("responder", true)
		.include("acertou", resposta)
		.include("responder", false)
		.include("mensagem", mensagem)
		.include("chances", userWeb.getChances())
		.include("hint", "#modalHint"+userWeb.getHint());
		result.redirectTo(this).instrucoes_guide();
	}
	
	@Restrito
	@Path("user/proximaQuestaoTeste")
	public void proximaQuestaoTeste(){
		System.out.println("entrou no proxima questao");
		userWeb.setChances(3);
		result.redirectTo(this).instrucoes();
	}
	
	@Restrito
	@Path("user/voltaQuestaoGuide")
	public void voltaQuestaoGuide(){
		System.out.println("entrou no volta questao");
		result.redirectTo(this).instrucoes_guide();
	}
	

}
