package br.com.egame.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.com.egame.modelo.Badges;
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

@Component
public class UserDAO {

	private final Session session;
	private static final Logger logger = Logger.getLogger(UserDAO.class);

	public UserDAO(Session session) {
		this.session = session;
	}
	
	public void adiciona(User user){
		this.session.save(user);
	}

	public User carregaAdmin(User admin) {
		System.out.println("entrou");
		logger.info("Carregando usuário... verificando login: "+admin.getUsuario()+" e senha logados: "+admin.getSenha());
		try {
			return (User) session.createCriteria(User.class)
					.add(Restrictions.eq("usuario", admin.getUsuario()))
					.add(Restrictions.eq("senha", admin.getSenha())).uniqueResult();
		} catch (HibernateException e) {
			logger.info("HIBERNATE EXCEPTION - problema com a consulta de usuário - carrega(user) ");
			return null;
		}
	}

	public List<Questoes> getQuestoes(int idDisciplina) {
		@SuppressWarnings("unchecked")
		List<Questoes> questoes = session.createCriteria(Questoes.class)
				.add(Restrictions.eq("idDisciplina", idDisciplina))
				.list();
		return questoes;
				
	}
	
	public Disciplina getDisciplina(String nomeSerie){
		return (Disciplina) this.session.createCriteria(Disciplina.class).add(Restrictions.eq("nome", nomeSerie)).uniqueResult();
	}

	public void gravaQuestao(Respostas res) {
		this.session.save(res);
	}

	public void salvaUserLogado(User user) {
		this.session.update(user);
	}

	public void salvaBadgeUser(BadgesUser badge) {
		this.session.save(badge);
	}

	/**RETORNA OS BADGES DE UM ID ESPECIFICO */
	@SuppressWarnings("unchecked")
	public List<Badges> getBadges(int id) {
		List<BadgesUser> badgesUser = this.session.createCriteria(BadgesUser.class).add(Restrictions.eq("idUser", id)).list();
		List<Badges> badges = new ArrayList<Badges>();
		Badges aux = new Badges();
		for(BadgesUser bu : badgesUser){
			aux = (Badges) this.session.createCriteria(Badges.class).add(Restrictions.eq("id", bu.getIdBadge())).uniqueResult();
			badges.add(aux);
		}
		return badges;
	}

	@SuppressWarnings("unchecked")
	public List<User> getUsersEmOrdem() {
		return this.session.createCriteria(User.class)
				.addOrder(Order.desc("pontos"))
				.setMaxResults(5)
				.list();
	}

	public void salvaUser(User user) {
		this.session.save(user);
	}

	@SuppressWarnings("unchecked")
	public List<BadgesUser> getBadgesUser(int id) {
		return this.session.createCriteria(BadgesUser.class)
				.add(Restrictions.eq("idUser", id))
				.add(Restrictions.eq("novo", true))
				.list();
	}

	public void atualizaBadgeUser(BadgesUser bu) {
		this.session.update(bu);
	}

	@SuppressWarnings("unchecked")
	public List<User> getUsersEmOrdemSemLimite() {
		return this.session.createCriteria(User.class)
				.addOrder(Order.desc("pontos"))
				.list();
	}

	public void salvaQuestionario1(Questionario1 questionario1) {
		this.session.save(questionario1);
		
	}

	public void salvaQuestionario2(Questionario2 questionario2) {
		this.session.save(questionario2);
		
	}

	public void salvaQuestionario3(Questionario3 questionario3) {
		this.session.save(questionario3);		
	}

	public void salvaQuestionario4(Questionario4 questionario4) {
		this.session.save(questionario4);		
	}

	public Badges getLastBadge(int id) {
//		BadgesUser bu = this.session.createCriteria(BadgesUser.class).add(Restrictions.eq("idUser", id))
		return null;
	}

	public void atualizaUser(User u) {
		this.session.update(u);
	}

	public void salvaLog(LogQuestoes logQuestoes) {
		this.session.saveOrUpdate(logQuestoes);
	}

	public void salvaTempoFeedback(TempoFeedback tf) {
		this.session.save(tf);
	}


}
