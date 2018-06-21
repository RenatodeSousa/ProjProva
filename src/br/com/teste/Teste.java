package br.com.teste;

import br.com.controle.RecuperacaoCtrl;
import br.com.entidade.Recuperacao;

public class Teste {

	public static void main (String[] args) {
		
		Recuperacao r = new Recuperacao();
		r.setDescricao("testando");
	    r.setNotaAnterior(10);
		r.setNotaNova(10);
		r.setMedia(10);
		
		
		
		
		RecuperacaoCtrl controle = new RecuperacaoCtrl();
		controle.insert(r);
		
		for (Recuperacao recuperacao : new RecuperacaoCtrl().select(Recuperacao.CONS_RECUPERACAO_ALL)) {
			System.out.println("id:"+ recuperacao.getId());
			System.out.println("descricao:"+ recuperacao.getDescricao());
			System.out.println("Nota anteror:"+ recuperacao.getNotaAnterior());
			System.out.println("Nota nova:"+ recuperacao.getNotaNova());
			System.out.println("Nota media:"+ recuperacao.getMedia());
		}
	}
}

