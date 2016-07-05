package br.com.egame.modelo;

import java.util.List;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;

@Component
@SessionScoped
public class UserWeb {

	private User logado;
	private int questaoAtual;
	private int hint;
	private int qtdAcertos;
	private int qtdErros;
	private List<Badges> badges;
	private boolean ganhou5;
	private boolean ganhou10;
	private boolean ganhou15;
	private boolean ganhou20;
	private boolean ganhou25;
	private List<User> users;
	private double progresso;
	private boolean primeiroAcesso;
	private int chances;
	private int pontosDescontar;
	private int idDisciplina;
	private int qtdDicas;
	
	public void login(User user){
		this.logado = user;
	}
	
	public int getId(){
		return logado.getId();
	}
	
	public int getPontos(){
		return logado.getPontos();
	}
	
	public String getAvatar(){
		return logado.getAvatar();
	}

	
	public String getNome(){
		return logado.getNome();
	}
	
	public boolean isLogado(){
		return logado != null;
	}

	public void logout() {
		this.logado = null;
	}
	
	public String getEmail(){
		return logado.getEmail();
	}
	
	public String getTipo(){
		return logado.getTipo();
	}
	
	public int getQuestaoAtual() {
		return questaoAtual;
	}

	public void setQuestaoAtual(int questaoAtual) {
		this.questaoAtual = questaoAtual;
	}

	public int getHint() {
		return hint;
	}

	public void setHint(int hint) {
		this.hint = hint;
	}

	public User getUserLogado(){
		return this.logado;
	}

	public int getQtdAcertos() {
		return qtdAcertos;
	}

	public void setQtdAcertos(int qtdAcertos) {
		this.qtdAcertos = qtdAcertos;
	}

	public int getQtdErros() {
		return qtdErros;
	}

	public void setQtdErros(int qtdErros) {
		this.qtdErros = qtdErros;
	}

	public List<Badges> getBadges() {
		return badges;
	}

	public void setBadges(List<Badges> badges) {
		this.badges = badges;
	}

	public boolean isGanhou25() {
		return ganhou25;
	}

	public void setGanhou25(boolean ganhou25) {
		this.ganhou25 = ganhou25;
	}

	public boolean isGanhou20() {
		return ganhou20;
	}

	public void setGanhou20(boolean ganhou20) {
		this.ganhou20 = ganhou20;
	}

	public boolean isGanhou15() {
		return ganhou15;
	}

	public void setGanhou15(boolean ganhou15) {
		this.ganhou15 = ganhou15;
	}

	public boolean isGanhou10() {
		return ganhou10;
	}

	public void setGanhou10(boolean ganhou10) {
		this.ganhou10 = ganhou10;
	}

	public boolean isGanhou5() {
		return ganhou5;
	}

	public void setGanhou5(boolean ganhou5) {
		this.ganhou5 = ganhou5;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public double getProgresso() {
		return progresso;
	}

	public void setProgresso(double progresso) {
		this.progresso = progresso;
	}

	public boolean isPrimeiroAcesso() {
		return this.primeiroAcesso;
	}

	public void setPrimeiroAcesso() {
		this.primeiroAcesso = logado.isPrimeiroAcesso();
	}

	public int getChances() {
		return chances;
	}

	public void setChances(int chances) {
		this.chances = chances;
	}

	public int getPontosDescontar() {
		return pontosDescontar;
	}

	public void setPontosDescontar(int pontosDescontar) {
		this.pontosDescontar = pontosDescontar;
	}

	public int getIdDisciplina() {
		return idDisciplina;
	}

	public void setIdDisciplina(int idDisciplina) {
		this.idDisciplina = idDisciplina;
	}

	public int getQtdDicas() {
		return qtdDicas;
	}

	public void setQtdDicas(int qtdDicas) {
		this.qtdDicas = qtdDicas;
	}
	
	


}
