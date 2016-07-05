package br.com.egame.service;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class Email {
	

	public void enviarEmailSolicitacaoConsulta(String nomeTitular, String nomeConsulta, String med, String espec, String periodo, String nome, String codigoCartao, String timepicker) {
		String nomeResponsavel = "Tamiris";
		
		String mensagem = "Ol�, o usu�rio "+nome+" fez uma solicita��o de consulta atrav�s do sistema. \n" +
		" Segue os dados referentes � consulta: \n\n" +
				
		" Nome titular: " +nomeTitular+ "\n" +
		" Nome de quem realizar� a consulta: " +nomeConsulta + "\n" +
		" C�digo do cart�o: " +codigoCartao+ "\n" +
		" M�dico: " +med+ "\n" +
		" Especialidade: " +espec+" \n" +
		" Data da consulta: " +periodo + " \n" +
		" Hora da consulta: " +timepicker + " \n\n\n\n" +
		"Atenciosamente, \n\n\n"+
		"Sistema APAS S�o Carlos";
		
				
		String assunto = "Solicita��o de Consulta";
		
		   try {
			SimpleEmail email = new SimpleEmail();
			   
			//Utilize o hostname do seu provedor de email
			   System.out.println("alterando hostname...");
			   email.setHostName("mail.apassaocarlos.com.br");
			   //Quando a porta utilizada n�o � a padr�o (gmail = 465)
			   email.setSmtpPort(26);
			   
			   //Adicione os destinat�rios
			   email.addTo("adm1@apassaocarlos.com.br");
			   email.addTo("adm2@apassaocarlos.com.br");
			   email.addTo("secretaria@apassaocarlos.com.br");
			   email.setFrom("sistema@apassaocarlos.com.br", "SistemaApas");
			   email.setSubject(assunto);
			   email.setMsg(mensagem);

			   System.out.println("autenticando...");
			   email.setSSL(false);
			   email.setAuthentication("sistema@apassaocarlos.com.br", "sistema123");
			   
			   System.out.println("enviando...");
			   email.send();
			   System.out.println("Email enviado!");
		} catch (EmailException e) {
			e.printStackTrace();
		}
	}




	public void enviarConfirmacaoConsulta(String destinatario, String nome) {
		String nomeResponsavel = nome;
		
		String mensagem = "Ol�, foi autorizada uma consulta em seu nome no sistema APAS S�o Carlos. \n" +
		" Em caso de algum erro, favor contatar uma de nossas atendentes. \n\n" +
		"Atenciosamente, \n\n\n"+
		"Sistema APAS S�o Carlos";
		
		String assunto = "Autoriza��o de Consulta";
		
		   try {
			SimpleEmail email = new SimpleEmail();
			   
			//Utilize o hostname do seu provedor de email
			   System.out.println("alterando hostname...");
			   email.setHostName("mail.apassaocarlos.com.br");
			   //Quando a porta utilizada n�o � a padr�o (gmail = 465)
			   email.setSmtpPort(26);
			   
			   //Adicione os destinat�rios
			   email.addTo(destinatario, nomeResponsavel);
			   email.setFrom("sistema@apassaocarlos.com.br", "SistemaApas");
			   email.setSubject(assunto);
			   email.setMsg(mensagem);

			   //Para autenticar no servidor � necess�rio chamar os dois m�todos abaixo
			   System.out.println("autenticando...");
			   email.setSSL(false);
			   email.setAuthentication("sistema@apassaocarlos.com.br", "sistema123");
			   
			   System.out.println("enviando...");
			   email.send();
			   System.out.println("Email enviado!");
		} catch (EmailException e) {
			e.printStackTrace();
		}
	}

}
