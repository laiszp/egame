package br.com.egame.dao;

import org.apache.log4j.Logger;
import org.hibernate.Session;

import br.com.caelum.vraptor.ioc.Component;

@Component
public class AdminDAO {
	private final Session session;
	private static final Logger logger = Logger.getLogger(AdminDAO.class);

	public AdminDAO(Session session) {
		this.session = session;
	}

//	public void salvaConfiguracao(Configuracao config) {
//		this.session.saveOrUpdate(config);
//		logger.info("Configurações alteradas com sucesso!");
//	}
//
//	public Configuracao getConfiguracao() {
//		return (Configuracao) this.session.createCriteria(Configuracao.class).uniqueResult();
//	}
//
//	public void salvaValorMensalidade(ValorMensalidade valorMensalidade) {
//		this.session.saveOrUpdate(valorMensalidade);
//		logger.info("Mensalidades alteradas com sucesso!");
//	}
//
//	public ValorMensalidade getValorMensalidadeApasFamCol() {
//		return (ValorMensalidade) this.session.createCriteria(ValorMensalidade.class)
//				.add(Restrictions.eq("plano", "APAS PLUS 1119"))
//				.add(Restrictions.eq("tipoAssociado", "Familiar"))
//				.add(Restrictions.eq("tipoQuarto", "Coletivo"))
//				.uniqueResult();
//	}
//
//	public ValorMensalidade getValorMensalidadeApasFamAp() {
//		return (ValorMensalidade) this.session.createCriteria(ValorMensalidade.class)
//				.add(Restrictions.eq("plano", "APAS PLUS 1119"))
//				.add(Restrictions.eq("tipoAssociado", "Familiar"))
//				.add(Restrictions.eq("tipoQuarto", "Apartamento"))
//				.uniqueResult();
//	}
//
//	public ValorMensalidade getValorMensalidadeApasAgregados() {
//		return (ValorMensalidade) this.session.createCriteria(ValorMensalidade.class)
//				.add(Restrictions.eq("plano", "APAS PLUS 1119"))
//				.add(Restrictions.eq("tipoAssociado", "Agregados"))
//				.uniqueResult();
//	}
//
//	public ValorMensalidade getValorMensalidadeApasIIColetivo() {
//		return (ValorMensalidade) this.session.createCriteria(ValorMensalidade.class)
//				.add(Restrictions.eq("plano", "APAS II 1190"))
//				.add(Restrictions.eq("tipoAssociado", "Familiar"))
//				.add(Restrictions.eq("tipoQuarto", "Coletivo"))
//				.uniqueResult();
//	}
//	
//	public ValorMensalidade getValorMensalidadeApasIIApartamento() {
//		return (ValorMensalidade) this.session.createCriteria(ValorMensalidade.class)
//				.add(Restrictions.eq("plano", "APAS II 1190"))
//				.add(Restrictions.eq("tipoAssociado", "Familiar"))
//				.add(Restrictions.eq("tipoQuarto", "Apartamento"))
//				.uniqueResult();
//	}
//
//	public void salvaTaxaAdministrativa(TaxaAdministrativa taxaAdministrativa) {
//		this.session.save(taxaAdministrativa);
//	}
//
//	
//	
//	/*************************** - TAXA ADMINISTRATIVA - *********************************************/
//	/**Retorna uma lista com todas as taxas administrativas em aberto*/
//	@SuppressWarnings("unchecked")
//	public List<TaxaAdministrativa> getListTaxaAdministrativa() {
//		return this.session.createCriteria(TaxaAdministrativa.class)
//				.add(Restrictions.eq("pago", false))
//				.list();
//	}
//
//	@SuppressWarnings("unchecked")
//	public List<TaxaAdministrativa> getListTaxaAdmPorNome(String nome) {
//		return this.session.createCriteria(TaxaAdministrativa.class)
//				.add(Restrictions.ilike("nome", nome, MatchMode.ANYWHERE))
//				.add(Restrictions.eq("pago", false))
//				.list();
//	}
//
//	@SuppressWarnings("unchecked")
//	public List<TaxaAdministrativa> getListTaxaAdmPorValor(String valor) {
//		double vlr = Double.parseDouble(valor);
//		return this.session.createCriteria(TaxaAdministrativa.class)
//				.add(Restrictions.eq("pago", false))
//				.add(Restrictions.eq("valor", vlr))
//				.list();
//	}
//
//	@SuppressWarnings("unchecked")
//	public List<TaxaAdministrativa> getListTaxaAdmPorMes(String mes) {
//		int m = Integer.parseInt(mes);
//		return this.session.createCriteria(TaxaAdministrativa.class)
//				.add(Restrictions.eq("pago", false))
//				.add(Restrictions.eq("mes", m))
//				.list();
//	}
//
//	@SuppressWarnings("unchecked")
//	public List<Hollerith> getListHollerith() {
//		return this.session.createCriteria(Hollerith.class)
//				.list();
//	}
//
//	public void updateHollerith(Hollerith h) {
//		this.session.update(h);
//	}
//
//	
//	/**Executa o UPDATE na tabela de users e tabela Hollerith para atualizar as mensalidades*/
//	public void atualizaMensalidadesUsuarios(ValorMensalidade valorMensalidade) {
//		
//		if(valorMensalidade.getTipoAssociado().equals("Familiar")){
//			
//			this.session.createSQLQuery("UPDATE User set mensalidade = "+valorMensalidade.getValor17()+" where "+
//					"idade between 0 and 17 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"' "+
//					"").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE User set mensalidade = "+valorMensalidade.getValor29()+" where "+
//					"idade between 18 and 29 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"' "+
//					"").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE User set mensalidade = "+valorMensalidade.getValor39()+" where "+
//					"idade between 30 and 39 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"' "+
//					"").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE User set mensalidade = "+valorMensalidade.getValor49()+" where "+
//					"idade between 40 and 49 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"' "+
//					"").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE User set mensalidade = "+valorMensalidade.getValor59()+" where "+
//					"idade between 50 and 59 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"' "+
//					"").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE User set mensalidade = "+valorMensalidade.getValor69()+" where "+
//					"idade between 60 and 69 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"' "+
//					"").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE User set mensalidade = "+valorMensalidade.getValor70()+" where "+
//					"idade >= 70 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"' "+
//					"").executeUpdate();
//			
//			
//			/**UPDATE DEPENDENTE*/
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor17()+" where "+
//					"idade between 0 and 17 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"'").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor29()+" where "+
//					"idade between 18 and 29 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"'").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor39()+" where "+
//					"idade between 30 and 39 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"'").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor49()+" where "+
//					"idade between 40 and 49 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"'").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor59()+" where "+
//					"idade between 50 and 59 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"'").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor69()+" where "+
//					"idade between 60 and 69 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"'").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor70()+" where "+
//					"idade >= 70 and plano = '"+valorMensalidade.getPlano()+"' and acomodacao = '"+valorMensalidade.getTipoQuarto()+"'").executeUpdate();
//		}
//		
//	if(valorMensalidade.getTipoAssociado().equals("Agregados")){
//			
//			/**UPDATE DEPENDENTE*/
//						
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor49()+" where "+
//					"idade between 0 and 49 and plano = '"+valorMensalidade.getPlano()+"' and parentesco = 'Agregada'").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor59()+" where "+
//					"idade between 50 and 59 and plano = '"+valorMensalidade.getPlano()+"' and parentesco = 'Agregada'").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor69()+" where "+
//					"idade between 60 and 69 and plano = '"+valorMensalidade.getPlano()+"' and parentesco = 'Agregada'").executeUpdate();
//			
//			this.session.createSQLQuery("UPDATE Dependente set valorMensalidade = "+valorMensalidade.getValor70()+" where "+
//					"idade >= 70 and plano = '"+valorMensalidade.getPlano()+"' and parentesco = 'Agregada'").executeUpdate();
//		}
//			
//			
//	}
//	
//
//	public User buscaUsuarioPeloNome(String nome) {
//		return (User) session.createCriteria(User.class)
//				.add(Restrictions.eq("nome", nome))
//				.add(Restrictions.eq("tipo", "Usuario"))
//				.add(Restrictions.eq("ativo", true))
//				.uniqueResult();
//}

	



	






}
