package br.com.egame.controller;

import org.apache.log4j.Logger;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.egame.dao.AdminDAO;
import br.com.egame.infra.AutorizacaoInterceptor.Restrito;
import br.com.egame.modelo.UserWeb;

@Resource
public class AdministradorController {
	private final AdminDAO dao;
	private final Result result;
	private final Validator validator;
	private final UserWeb userWeb;
	
	
	
	private static final Logger logger = Logger.getLogger(AdministradorController.class);
	
	public AdministradorController(AdminDAO dao, Result result, Validator validator, UserWeb userWeb){
		this.dao = dao;
		this.result = result;
		this.validator = validator;
		this.userWeb = userWeb;
	}
	

	
	/**HOME ADMIN*/
	@Restrito
	@Path("/administrador/home")
	public void homeadministrador(){
//		userWeb.setConfig(dao.getConfiguracao());
	}
	

}
