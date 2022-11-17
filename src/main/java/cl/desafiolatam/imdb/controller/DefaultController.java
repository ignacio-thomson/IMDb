package cl.desafiolatam.imdb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
	
	// Se crea un controlador predeterminado para redirigir en función del rol de las credenciales ingresadas.
	// nacho -> /admin y invitado -> /user
	
	@RequestMapping("/default")
	public String defaultAfterLogin(HttpServletRequest request) {
		if (request.isUserInRole("ROLE_ADMIN")) {
			return "redirect:/admin";
		} else {
			return "redirect:/user";
		}
	}
}
