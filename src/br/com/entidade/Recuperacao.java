package br.com.entidade;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

@NamedQuery (name= Recuperacao.CONS_RECUPERACAO_ALL, query= "select r From Recuperacao r")
@Entity
public class Recuperacao {

public static final String CONS_RECUPERACAO_ALL = "Recuperacao.Consulta";
	
	@Id
	@GeneratedValue
	private int id;
	private String descricao;
	private double notaAnterior;
    private double notaNova;
    private double media;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public double getNotaAnterior() {
		return notaAnterior;
	}
	public void setNotaAnterior(double notaAnterior) {
		this.notaAnterior = notaAnterior;
	}
	public double getNotaNova() {
		return notaNova;
	}
	public void setNotaNova(double notaNova) {
		this.notaNova = notaNova;
	}
	public double getMedia() {
		return media;
	}
	public void setMedia(double media) {
		this.media = media;
	}
	
    
    
    
    
    
        
	 
	
    
    
    
    
}
