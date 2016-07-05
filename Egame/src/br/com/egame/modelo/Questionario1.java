package br.com.egame.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Questionario1 {
	
	@Id @GeneratedValue
	private int id;
	private int idUser;
	private int anoNascimento;
	private String horasDiaSemana;
	private String horasDiaFds;
	private String territorioGeo;
	private String playComputerVideoGames;
	private String considerMyself;
	private String iWorkIn;
	private String wayOfPlayGames;
	private String videoGamesStories;
	private String game1;
	private String game2;
	private String game3;
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
	public int getAnoNascimento() {
		return anoNascimento;
	}
	public void setAnoNascimento(int anoNascimento) {
		this.anoNascimento = anoNascimento;
	}
	public String getHorasDiaSemana() {
		return horasDiaSemana;
	}
	public void setHorasDiaSemana(String horasDiaSemana) {
		this.horasDiaSemana = horasDiaSemana;
	}
	public String getHorasDiaFds() {
		return horasDiaFds;
	}
	public void setHorasDiaFds(String horasDiaFds) {
		this.horasDiaFds = horasDiaFds;
	}
	public String getTerritorioGeo() {
		return territorioGeo;
	}
	public void setTerritorioGeo(String territorioGeo) {
		this.territorioGeo = territorioGeo;
	}
	public String getPlayComputerVideoGames() {
		return playComputerVideoGames;
	}
	public void setPlayComputerVideoGames(String playComputerVideoGames) {
		this.playComputerVideoGames = playComputerVideoGames;
	}
	public String getConsiderMyself() {
		return considerMyself;
	}
	public void setConsiderMyself(String considerMyself) {
		this.considerMyself = considerMyself;
	}
	public String getiWorkIn() {
		return iWorkIn;
	}
	public void setiWorkIn(String iWorkIn) {
		this.iWorkIn = iWorkIn;
	}
	public String getWayOfPlayGames() {
		return wayOfPlayGames;
	}
	public void setWayOfPlayGames(String wayOfPlayGames) {
		this.wayOfPlayGames = wayOfPlayGames;
	}
	public String getVideoGamesStories() {
		return videoGamesStories;
	}
	public void setVideoGamesStories(String videoGamesStories) {
		this.videoGamesStories = videoGamesStories;
	}
	public String getGame1() {
		return game1;
	}
	public void setGame1(String game1) {
		this.game1 = game1;
	}
	public String getGame2() {
		return game2;
	}
	public void setGame2(String game2) {
		this.game2 = game2;
	}
	public String getGame3() {
		return game3;
	}
	public void setGame3(String game3) {
		this.game3 = game3;
	}
	

	

}
