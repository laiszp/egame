package br.com.egame.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Questoes {
	
	@Id @GeneratedValue
	private int id;
	private int idDisciplina;
	private String pergunta;
	private String alternativa1;
	private String alternativa2;
	private String alternativa3;
	private String alternativa4;
	private String alternativa5;
	private String respostaCerta;
	private int nivelQuestao; //1:facil  - 2: intermediario - 3: dificil
	private String hint1;
	private String hint2;
	private String hint3;
	private String hint4;
	private String hint5;
	private String titulo;
	private String image;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPergunta() {
		return pergunta;
	}
	public void setPergunta(String pergunta) {
		this.pergunta = pergunta;
	}
	public String getAlternativa1() {
		return alternativa1;
	}
	public void setAlternativa1(String alternativa1) {
		this.alternativa1 = alternativa1;
	}
	public String getAlternativa2() {
		return alternativa2;
	}
	public void setAlternativa2(String alternativa2) {
		this.alternativa2 = alternativa2;
	}
	public String getAlternativa3() {
		return alternativa3;
	}
	public void setAlternativa3(String alternativa3) {
		this.alternativa3 = alternativa3;
	}
	public String getAlternativa4() {
		return alternativa4;
	}
	public void setAlternativa4(String alternativa4) {
		this.alternativa4 = alternativa4;
	}
	public String getAlternativa5() {
		return alternativa5;
	}
	public void setAlternativa5(String alternativa5) {
		this.alternativa5 = alternativa5;
	}
	public String getRespostaCerta() {
		return respostaCerta;
	}
	public void setRespostaCerta(String respostaCerta) {
		this.respostaCerta = respostaCerta;
	}
	public int getNivelQuestao() {
		return nivelQuestao;
	}
	public void setNivelQuestao(int nivelQuestao) {
		this.nivelQuestao = nivelQuestao;
	}
	public int getIdDisciplina() {
		return idDisciplina;
	}
	public void setIdDisciplina(int idDisciplina) {
		this.idDisciplina = idDisciplina;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getHint4() {
		return hint4;
	}
	public void setHint4(String hint4) {
		this.hint4 = hint4;
	}
	public String getHint3() {
		return hint3;
	}
	public void setHint3(String hint3) {
		this.hint3 = hint3;
	}
	public String getHint2() {
		return hint2;
	}
	public void setHint2(String hint2) {
		this.hint2 = hint2;
	}
	public String getHint1() {
		return hint1;
	}
	public void setHint1(String hint1) {
		this.hint1 = hint1;
	}
	public String getHint5() {
		return hint5;
	}
	public void setHint5(String hint5) {
		this.hint5 = hint5;
	}
	
	
}
