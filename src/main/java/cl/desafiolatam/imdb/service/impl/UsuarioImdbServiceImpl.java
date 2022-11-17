package cl.desafiolatam.imdb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cl.desafiolatam.imdb.dao.UsuarioImdbRepository;
import cl.desafiolatam.imdb.modelo.UsuarioImdb;
import cl.desafiolatam.imdb.service.UsuarioImdbService;
import cl.desafiolatam.imdb.vo.UsuarioImdbVO;

@Service
public class UsuarioImdbServiceImpl implements UsuarioImdbService {
	
	private static final Logger logger = LoggerFactory.getLogger(UsuarioImdbServiceImpl.class);
	
	@Autowired
	UsuarioImdbRepository dao;
	UsuarioImdbVO respuesta;

	@Override
	@Transactional
	public UsuarioImdbVO add(UsuarioImdb usuario) {
		
		respuesta = new UsuarioImdbVO("Ha ocurrido un error!", "104", new ArrayList<UsuarioImdb>());
		
		try {
			dao.save(usuario);
			respuesta.setMensaje("Se ha añadido correctamente el usuario");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Error al añadir al usuario", e);
		}
		
		return respuesta;
	}

	@Override
	@Transactional
	public UsuarioImdbVO delete(UsuarioImdb usuario) {
		
		respuesta = new UsuarioImdbVO("Ha ocurrido un error!", "104", new ArrayList<UsuarioImdb>());

		try {
			dao.delete(usuario);
			respuesta.setMensaje("Se ha borrado correctamente el usuario");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Ha ocurrido un error al borrar el usuario", e);
		}
		
		return respuesta;
	}

	@Override
	@Transactional
	public UsuarioImdbVO update(UsuarioImdb usuario) {
		
		respuesta = new UsuarioImdbVO("Ha ocurrido un error!", "104", new ArrayList<UsuarioImdb>());

		try {
			dao.save(usuario);
			respuesta.setMensaje("Se ha actualizado correctamente el usuario");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Ha ocurrido un error al actualizar al usuario");
		}
		
		return respuesta;
	}

	@Override
	@Transactional(readOnly = true)
	public UsuarioImdbVO findById(int id) {
		
		respuesta = new UsuarioImdbVO("Ha ocurrido un error!", "104", new ArrayList<UsuarioImdb>());

		try {
			UsuarioImdb usuario = dao.findById(id).get();
			respuesta.getUsuarios().add(usuario);
			respuesta.setMensaje("Se ha encontrado el usuario");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Ha ocurrido un error al buscar el usuario");
		}
		
		return respuesta;
	}

	@Override
	@Transactional(readOnly = true)
	public UsuarioImdbVO findAll() {
		
		respuesta = new UsuarioImdbVO("Ha ocurrido un error!", "104", new ArrayList<UsuarioImdb>());
		
		try {
			List<UsuarioImdb> usuarios = (List<UsuarioImdb>) dao.findAll();
			respuesta.setUsuarios(usuarios);
			respuesta.setMensaje("Se han encontrado los usuarios");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			logger.error("Ha ocurrido un error al buscar los usuarios");
		}
		
		return respuesta;
	}

	@Override
	public UsuarioImdbVO findByUsuarioIgnoreCaseContaining(String usuario) {
		
		respuesta = new UsuarioImdbVO("Ha ocurrido un error!", "104", new ArrayList<UsuarioImdb>());

		try {
			List<UsuarioImdb> usuarioPatron = dao.findByUsuarioIgnoreCaseContaining(usuario);
			if (usuarioPatron.size() > 0) {
				respuesta.setUsuarios(usuarioPatron);
				respuesta.setMensaje("Se ha encontrado el usuario");
				respuesta.setCodigo("0");
			} else {
				respuesta.setMensaje("No se ha encontrado el usuario");
				respuesta.setCodigo("104");
			}
		} catch (Exception e) {
			logger.error("Error al buscar el usuario", e);
		}
		
		return respuesta;
	}

}
