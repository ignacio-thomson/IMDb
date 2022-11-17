package cl.desafiolatam.imdb.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.desafiolatam.imdb.modelo.Serie;

public interface SerieRepository extends JpaRepository<Serie, Integer> {
	
	public List<Serie> findByTitleIgnoreCaseContaining(String titulo);
	
}
