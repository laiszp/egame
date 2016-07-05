package br.com.egame.service;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class Email {
	

	public void enviarEmailSolicitacaoConsulta(String nomeTitular, String nomeConsulta, String med, String espec, String periodo, String nome, String codigoCartao, String timepicker) {
		String nomeResponsavel = "Tamiris";
		
		String mensagem = "Olá, o usuário "+nome+" fez uma solicitação de consulta através do sistema. \n" +
		" Segue os dados referentes à consulta: \n\n" +
				
		" Nome titular: " +nomeTitular+ "\n" +
		" Nome de quem realizará a consulta: " +nomeConsulta + "\n" +
		" Código do cartão: " +codigoCartao+ "\n" +
		" Médico: " +med+ "\n" +
		" Especialidade: " +espec+" \n" +
		" Data da consulta: " +periodo + " \n" +
		" Hora da consulta: " +timepicker + " \n\n\n\n" +
		"Atenciosamente, \n\n\n"+
		"Sistema APAS São Carlos";
		
				
		String assunto = "Solicitação de Consulta";
		
		   try {
			SimpleEmail email = new SimpleEmail();
			   
			//Utilize o hostname do seu provedor de email
			   System.out.println("alterando hostname...");
			   email.setHostName("mail.apassaocarlos.com.br");
			   //Quando a porta utilizada não é a padrão (gmail = 465)
			   email.setSmtpPort(26);
			   
			   //Adicione os destinatários
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
		
		String mensagem = "Olá, foi autorizada uma consulta em seu nome no sistema APAS São Carlos. \n" +
		" Em caso de algum erro, favor contatar uma de nossas atendentes. \n\n" +
		"Atenciosamente, \n\n\n"+
		"Sistema APAS São Carlos";
		
		String assunto = "Autorização de Consulta";
		
		   try {
			SimpleEmail email = new SimpleEmail();
			   
			//Utilize o hostname do seu provedor de email
			   System.out.println("alterando hostname...");
			   email.setHostName("mail.apassaocarlos.com.br");
			   //Quando a porta utilizada não é a padrão (gmail = 465)
			   email.setSmtpPort(26);
			   
			   //Adicione os destinatários
			   email.addTo(destinatario, nomeResponsavel);
			   email.setFrom("sistema@apassaocarlos.com.br", "SistemaApas");
			   email.setSubject(assunto);
			   email.setMsg(mensagem);

			   //Para autenticar no servidor é necessário chamar os dois métodos abaixo
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
