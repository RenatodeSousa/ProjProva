package br.com.service;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import br.com.controle.RecuperacaoCtrl;
import br.com.entidade.Recuperacao;


@Path("/recuperacao")
public class RecuperacaoService {
	@GET
	@Path("/select")
	public  Response select() {
		return Response.ok(new RecuperacaoCtrl().select(Recuperacao.CONS_RECUPERACAO_ALL), MediaType.APPLICATION_JSON).build();
}
	@POST
	@Path("/save")
	public void save(Recuperacao recuperacao) {
		new RecuperacaoCtrl().insert(recuperacao);
	}
	@POST
	@Path("/update")
	public void update(Recuperacao recuperacao) {
		new RecuperacaoCtrl().update(recuperacao);
	}

	@POST
	@Path("/delete")
	public void delete(Recuperacao recuperacao) {
		new RecuperacaoCtrl().delete(recuperacao);
	}

	}
