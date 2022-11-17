package cl.desafiolatam.imdb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cl.desafiolatam.imdb.dao.SerieRepository;
import cl.desafiolatam.imdb.modelo.Serie;
import cl.desafiolatam.imdb.service.SerieService;
import cl.desafiolatam.imdb.vo.SerieVO;

@Service
public class SerieServiceImpl implements SerieService {
	
	private static final Logger logger = LoggerFactory.getLogger(SerieServiceImpl.class);
	
	@Autowired
	SerieRepository dao;
	SerieVO respuesta;

	@Override
	@Transactional
	public SerieVO add(Serie serie) {
		
		respuesta = new SerieVO("Ha ocurrido un error!", "104", new ArrayList<Serie>());
		
		try {
			dao.save(serie);
			respuesta.setMensaje(String.format("Se ha añadido correctamente la serie %s", serie.getTitle()));
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Ha ocurrido un error al añadir la serie", e);
		}
		
		return respuesta;
	}

	@Override
	@Transactional
	public SerieVO delete(Serie serie) {
		
		respuesta = new SerieVO("Ha ocurrido un error!", "104", new ArrayList<Serie>());

		try {
			dao.delete(serie);
			respuesta.setMensaje(String.format("Se ha borrado correctamente la serie %s", serie.getTitle()));
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Error al borrar la serie", e);
		}
		
		return respuesta;
	}

	@Override
	@Transactional
	public SerieVO update(Serie serie) {
		
		respuesta = new SerieVO("Ha ocurrido un error!", "104", new ArrayList<Serie>());

		try {
			dao.save(serie);
			respuesta.setMensaje(String.format("Se ha actualizado correctamente la serie %s", serie.getTitle()));
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Error al actualizar la serie", e);
		}
		
		return respuesta;
	}

	@Override
	@Transactional(readOnly = true)
	public SerieVO findById(int id) {
		
		respuesta = new SerieVO("Ha ocurrido un error!", "104", new ArrayList<Serie>());

		try {
			Serie serie = dao.findById(id).get();
			respuesta.getSeries().add(serie);
			respuesta.setMensaje("Se ha encontrado correctamente el registro");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Error al encontrar el registro", e);
		}
		
		return respuesta;
	}

	@Override
	@Transactional(readOnly = true)
	public SerieVO findAll() {
		
		respuesta = new SerieVO("Ha ocurrido un error!", "104", new ArrayList<Serie>());

		try {
			List<Serie> series = (List<Serie>) dao.findAll();
			respuesta.setSeries(series);
			respuesta.setMensaje("Se han encontrado los registros");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Error al encontrar los registros", e);
		}
		
		return respuesta;
	}

	@Override
	@Transactional(readOnly = true)
	public SerieVO findByTitleIgnoreCaseContaining(String titulo) {
		
		respuesta = new SerieVO("Ha ocurrido un error!", "104", new ArrayList<Serie>());
		
		try {
			List<Serie> seriePatron = dao.findByTitleIgnoreCaseContaining(titulo);
			if (seriePatron.size() > 0) {
				respuesta.setSeries(seriePatron);
				respuesta.setMensaje("Se ha encontrado la serie");
				respuesta.setCodigo("0");
			} else {
				respuesta.setMensaje("No se ha encontrado la serie");
				respuesta.setCodigo("104");
			}
		} catch (Exception e) {
			logger.error("Error al buscar el producto", e);
		}
		
		return respuesta;
	}

}
