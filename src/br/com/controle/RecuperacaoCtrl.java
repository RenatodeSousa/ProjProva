package br.com.controle;

import java.util.ArrayList;
import java.util.List;

import br.com.dados.DBGenerico;
import br.com.entidade.Recuperacao;


public class RecuperacaoCtrl {
	
	public boolean insert (Recuperacao r) {
	
		
			
		
		return DBGenerico.getInstance().insert(r);
	
	}

	public double  medianotas (Recuperacao r) {
		double n1= r.getNotaAnterior();
		double n2 =r.getNotaNova();
		double m = n1+n2/2;
	
		
		 return (m);
				
	}
	public boolean update (Recuperacao r) {
		return DBGenerico.getInstance().update(r);
	
	}
	public boolean delete (Recuperacao r) {
		Recuperacao receita = new Recuperacao();
		receita = (Recuperacao) DBGenerico.getInstance().select(r.getId(), Recuperacao.class);
		return DBGenerico.getInstance().delete(receita);
	
	}
	@SuppressWarnings({"unchecked", "rawtypes"})
	public List<Recuperacao>select (String q){
		return (ArrayList) DBGenerico.getInstance().select(q);
			
		}
	
	@SuppressWarnings({"unchecked", "rawtypes"})
	public List<Recuperacao>select (String q, Object valor){
		return (ArrayList) DBGenerico.getInstance().selectTo(q, valor);
			
		}
}
