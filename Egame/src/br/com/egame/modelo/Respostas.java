package br.com.egame.modelo;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Respostas {
	
	@Id @GeneratedValue
	private int id;
	private int idUser;
	private int idQuestao;
	private boolean acertou;
	private int hint;
	private int qtdTrapaca;
	private Timestamp data;
	
	
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
	public int getIdQuestao() {
		return idQuestao;
	}
	public void setIdQuestao(int idQuestao) {
		this.idQuestao = idQuestao;
	}
	public boolean isAcertou() {
		return acertou;
	}
	public void setAcertou(boolean acertou) {
		this.acertou = acertou;
	}
	public int getHint() {
		return hint;
	}
	public void setHint(int hint) {
		this.hint = hint;
	}
	public int getQtdTrapaca() {
		return qtdTrapaca;
	}
	public void setQtdTrapaca(int qtdTrapaca) {
		this.qtdTrapaca = qtdTrapaca;
	}
	public Timestamp getData() {
		return data;
	}
	public void setData(Timestamp data) {
		this.data = data;
	}
	
	
}
