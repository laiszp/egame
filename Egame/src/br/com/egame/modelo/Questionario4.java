package br.com.egame.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Questionario4 {
	
	@Id @GeneratedValue
	private int id;
	private int idUser;
	//interface - open questions
	private String moreFunctionality;
	private String currentlyMotivational;
	private String ideaOfSystem;
	private String likeDesign;
	private String otherSuggestions;
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
	public String getMoreFunctionality() {
		return moreFunctionality;
	}
	public void setMoreFunctionality(String moreFunctionality) {
		this.moreFunctionality = moreFunctionality;
	}
	public String getCurrentlyMotivational() {
		return currentlyMotivational;
	}
	public void setCurrentlyMotivational(String currentlyMotivational) {
		this.currentlyMotivational = currentlyMotivational;
	}
	public String getIdeaOfSystem() {
		return ideaOfSystem;
	}
	public void setIdeaOfSystem(String ideaOfSystem) {
		this.ideaOfSystem = ideaOfSystem;
	}
	public String getLikeDesign() {
		return likeDesign;
	}
	public void setLikeDesign(String likeDesign) {
		this.likeDesign = likeDesign;
	}
	public String getOtherSuggestions() {
		return otherSuggestions;
	}
	public void setOtherSuggestions(String otherSuggestions) {
		this.otherSuggestions = otherSuggestions;
	}


}
