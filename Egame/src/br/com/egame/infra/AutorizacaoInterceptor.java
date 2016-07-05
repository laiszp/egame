package br.com.egame.infra;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.com.egame.controller.UserController;
import br.com.egame.modelo.UserWeb;

@Intercepts
public class AutorizacaoInterceptor implements Interceptor{

	private final UserWeb usuario;
	private final Result result;
	
	public AutorizacaoInterceptor(UserWeb usuario, Result result){
		this.usuario = usuario;
		this.result  = result;
	}
	
	@Override
	public boolean accepts(ResourceMethod method) {
		return !this.usuario.isLogado() && method.containsAnnotation(Restrito.class);
	}

	@Override
	public void intercept(InterceptorStack arg0, ResourceMethod arg1,
			Object arg2) throws InterceptionException {
		result.redirectTo(UserController.class).login(null);
	}
	
	@Retention(RetentionPolicy.RUNTIME)
	@Target(ElementType.METHOD)
	public @interface Restrito{
		
	}

}
