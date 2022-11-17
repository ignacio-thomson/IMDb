package cl.desafiolatam.imdb.service;

import cl.desafiolatam.imdb.modelo.Serie;
import cl.desafiolatam.imdb.vo.SerieVO;

public interface SerieService {
	
	public SerieVO add(Serie serie);
	public SerieVO delete(Serie serie);
	public SerieVO update(Serie serie);
	public SerieVO findById(int id);
	public SerieVO findAll();
	public SerieVO findByTitleIgnoreCaseContaining(String titulo);

}
