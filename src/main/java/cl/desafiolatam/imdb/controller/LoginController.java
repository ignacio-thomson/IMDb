package cl.desafiolatam.imdb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	// Controlador que redirige a la página de login
	
	@GetMapping({"/login"})
	public ModelAndView login() {
		return new ModelAndView("login");
	}
}