package br.com.egame.modelo;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class LogQuestoes {
	
	@Id @GeneratedValue
	private int id;
	private int idUsuario;
	private int idQuestao;
	private double tempoPermanenciaQuestao;
	private int trocaDeRadioButton;
	private int qtdDicasClicadas;
	private double tempoParaAbrirDica1;
	private double tempoDica1Para2;
	private double tempoDica2Para3;
	private double tempoDica3Para4;
	private double tempoDica4Para5;
	private double tempoBotaoFechar;
	private String tempoMudancaRadioButton;
	private boolean tempoEsgotado;
	private Calendar timestamp;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getTempoPermanenciaQuestao() {
		return tempoPermanenciaQuestao;
	}
	public void setTempoPermanenciaQuestao(double tempoPermanenciaQuestao) {
		this.tempoPermanenciaQuestao = tempoPermanenciaQuestao;
	}
	public int getTrocaDeRadioButton() {
		return trocaDeRadioButton;
	}
	public void setTrocaDeRadioButton(int trocaDeRadioButton) {
		this.trocaDeRadioButton = trocaDeRadioButton;
	}
	public int getQtdDicasClicadas() {
		return qtdDicasClicadas;
	}
	public void setQtdDicasClicadas(int qtdDicasClicadas) {
		this.qtdDicasClicadas = qtdDicasClicadas;
	}
	public double getTempoParaAbrirDica1() {
		return tempoParaAbrirDica1;
	}
	public void setTempoParaAbrirDica1(double tempoParaAbrirDica1) {
		this.tempoParaAbrirDica1 = tempoParaAbrirDica1;
	}
	public double getTempoDica1Para2() {
		return tempoDica1Para2;
	}
	public void setTempoDica1Para2(double tempoDica1Para2) {
		this.tempoDica1Para2 = tempoDica1Para2;
	}
	public double getTempoDica2Para3() {
		return tempoDica2Para3;
	}
	public void setTempoDica2Para3(double tempoDica2Para3) {
		this.tempoDica2Para3 = tempoDica2Para3;
	}
	public double getTempoDica3Para4() {
		return tempoDica3Para4;
	}
	public void setTempoDica3Para4(double tempoDica3Para4) {
		this.tempoDica3Para4 = tempoDica3Para4;
	}
	public double getTempoDica4Para5() {
		return tempoDica4Para5;
	}
	public void setTempoDica4Para5(double tempoDica4Para5) {
		this.tempoDica4Para5 = tempoDica4Para5;
	}
	public double getTempoBotaoFechar() {
		return tempoBotaoFechar;
	}
	public void setTempoBotaoFechar(double tempoBotaoFechar) {
		this.tempoBotaoFechar = tempoBotaoFechar;
	}
	public String getTempoMudancaRadioButton() {
		return tempoMudancaRadioButton;
	}
	public void setTempoMudancaRadioButton(String tempoMudancaRadioButton) {
		this.tempoMudancaRadioButton = tempoMudancaRadioButton;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public int getIdQuestao() {
		return idQuestao;
	}
	public void setIdQuestao(int idQuestao) {
		this.idQuestao = idQuestao;
	}
	public boolean isTempoEsgotado() {
		return tempoEsgotado;
	}
	public void setTempoEsgotado(boolean tempoEsgotado) {
		this.tempoEsgotado = tempoEsgotado;
	}
	public Calendar getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Calendar timestamp) {
		this.timestamp = timestamp;
	}

	
	
	
	
}
