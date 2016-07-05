package br.com.egame.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Acompanhamento {
	
	@Id @GeneratedValue
	private int id;
	private int idUser;
	private int idDisciplinaQueParou;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public int getIdDisciplinaQueParou() {
		return idDisciplinaQueParou;
	}
	public void setIdDisciplinaQueParou(int idDisciplinaQueParou) {
		this.idDisciplinaQueParou = idDisciplinaQueParou;
	}
	public int getIdQuestaoQueParou() {
		return idQuestaoQueParou;
	}
	public void setIdQuestaoQueParou(int idQuestaoQueParou) {
		this.idQuestaoQueParou = idQuestaoQueParou;
	}
	private int idQuestaoQueParou;
	
	
	
	
}
