package cl.desafiolatam.imdb.service;

import cl.desafiolatam.imdb.modelo.UsuarioImdb;
import cl.desafiolatam.imdb.vo.UsuarioImdbVO;

public interface UsuarioImdbService {
	
	public UsuarioImdbVO add(UsuarioImdb usuario);
	public UsuarioImdbVO delete(UsuarioImdb usuario);
	public UsuarioImdbVO update(UsuarioImdb usuario);
	public UsuarioImdbVO findById(int id);
	public UsuarioImdbVO findAll();
	public UsuarioImdbVO findByUsuarioIgnoreCaseContaining(String usuario);

}
