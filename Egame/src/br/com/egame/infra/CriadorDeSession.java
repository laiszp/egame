package br.com.egame.infra;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import br.com.caelum.vraptor.ioc.Component;


@Component
public class CriadorDeSession{
	
//	public SessionFactory factory;
//	
//	public CriadorDeSession (SessionFactory factory ) {
//		this.factory = factory;
//	}
//	
//	
//	public Session getInstance() {
//
//		//		AnnotationConfiguration configuration = new AnnotationConfiguration();
////		configuration.configure();
////		SessionFactory factory = configuration.buildSessionFactory();
//		Session session = factory.openSession();
//		return session;
//	}
//}
//	
	
	
	
	
	private final SessionFactory factory;
	private Session session;
	
	public CriadorDeSession(SessionFactory factory ) {
		this.factory = factory;
	}
	
	@PostConstruct
	public void abre () {
		this.session = factory.openSession();
	}
	
	public Session getInstance() {
		return this.session;
	}
	
	@PreDestroy
	public void fecha() {
		this.session.close();
	}
	
}
		
//		private final SessionFactory factory;
//		private Session session;
//
//		public CriadorDeSession(SessionFactory factory) {
//			this.factory = factory;
//		}
//		
//		@PostConstruct
//		public void abre() {
//			this.session = factory.openSession();
//		}
//		
//		public Session getInstance() {
//			return this.session;
//		}
//		
//		@PreDestroy
//		public void fecha() {
//			this.session.close();
//		}

