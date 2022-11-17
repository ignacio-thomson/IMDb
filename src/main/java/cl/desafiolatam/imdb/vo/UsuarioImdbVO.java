package cl.desafiolatam.imdb.vo;

import java.util.List;

import cl.desafiolatam.imdb.modelo.UsuarioImdb;

public class UsuarioImdbVO extends GenericVO {
	
	List<UsuarioImdb> usuarios;

	public UsuarioImdbVO(String mensaje, String codigo, List<UsuarioImdb> usuarios) {
		super(mensaje, codigo);
		this.usuarios = usuarios;
	}

	public UsuarioImdbVO() {
		super();
	}

	public List<UsuarioImdb> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(List<UsuarioImdb> usuarios) {
		this.usuarios = usuarios;
	}

	@Override
	public String toString() {
		return "UsuarioImdbVO [usuarios=" + usuarios + "]";
	}

}
