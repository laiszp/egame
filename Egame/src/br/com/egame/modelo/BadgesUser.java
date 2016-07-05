package br.com.egame.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class BadgesUser {

	@Id @GeneratedValue
	private int id;
	private int idUser;
	private int idBadge;
	private boolean novo;
	
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
	public int getIdBadge() {
		return idBadge;
	}
	public void setIdBadge(int idBadge) {
		this.idBadge = idBadge;
	}
	public boolean isNovo() {
		return novo;
	}
	public void setNovo(boolean novo) {
		this.novo = novo;
	}
	
	
}
