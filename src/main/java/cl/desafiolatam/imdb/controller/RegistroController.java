package cl.desafiolatam.imdb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import cl.desafiolatam.imdb.modelo.UsuarioImdb;
import cl.desafiolatam.imdb.service.UsuarioImdbService;
import cl.desafiolatam.imdb.vo.UsuarioImdbVO;

@Controller
public class RegistroController {
	
	@Autowired
	UsuarioImdbService svc;
	
	// Método enlazado con el botón de registro de la página Login, el cual redirije a la página de registro
	
	@GetMapping("/registro")
	public String registroForm() {
		return "registro";
	}
	
	// Método que añade registros a la tabla de usuarios de la base de datos
	
	@PostMapping("/agregarRegistro")
	public ModelAndView agregarUsuario(@ModelAttribute UsuarioImdb usuario) {
		
		UsuarioImdbVO respuestaServicio = svc.add(usuario);
		
		if (respuestaServicio.getCodigo().equals("0")) {
			return new ModelAndView("redirect:/login");
		} else {
			return new ModelAndView("error");
		}
		
	}

}
