package cl.desafiolatam.imdb.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import cl.desafiolatam.imdb.modelo.UsuarioImdb;

public interface UsuarioImdbRepository extends CrudRepository<UsuarioImdb, Integer> {
	
	public List<UsuarioImdb> findByUsuarioIgnoreCaseContaining(String usuario);
	
}
