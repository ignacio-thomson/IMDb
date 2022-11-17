package cl.desafiolatam.imdb.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cl.desafiolatam.imdb.modelo.UsuarioImdb;
import cl.desafiolatam.imdb.service.UsuarioImdbService;
import cl.desafiolatam.imdb.vo.UsuarioImdbVO;

@Controller
public class UsuarioAdminController {
	
	private final static Logger logger = LoggerFactory.getLogger(UsuarioAdminController.class);
	
	@Autowired
	private UsuarioImdbService svc;
	
	// Método para poblar la tabla de la página principal
	
	@GetMapping("/admin")
	public String listarUsuarios(Model model, @RequestParam(defaultValue = "1") int p) {
		model.addAttribute("listaUsuarios", svc.findAll());
		return "homeadmin";
	}
	
	// Método para eliminar usuarios de la tabla de la base de datos
	
	@GetMapping("/eliminar")
	public ModelAndView eliminarUsuario(Model model, @RequestParam String idUsuario, RedirectAttributes ra) {
		
		UsuarioImdbVO respuestaServicio = new UsuarioImdbVO();
		respuestaServicio.setMensaje("No fue posible eliminar el usuario");
		
		try {
			UsuarioImdb usuarioEliminar = new UsuarioImdb();
			usuarioEliminar.setId(Integer.parseInt(idUsuario));
			respuestaServicio = svc.delete(usuarioEliminar);
			return new ModelAndView("redirect:/admin");
		} catch (Exception e) {
			logger.error("Error al eliminar el usuario");
		}
		
		respuestaServicio = svc.findAll();
		ra.addAttribute("listaUsuarios", respuestaServicio);
		
		return new ModelAndView("redirect:/admin");
	}
	
	// Metodo que recoje los parámetros de la entreda que se quiere editar, para posteriormente redirigir a la página de edición
	
	@GetMapping("/editarForm")
	public ModelAndView editarForm(Model model, @RequestParam String idUsuario) {
		
		UsuarioImdbVO respuestaServicio = new UsuarioImdbVO();
		respuestaServicio.setMensaje("No se puede acceder a la pagina de edicion");
		
		try {
			Integer id = Integer.parseInt(idUsuario);
			respuestaServicio = svc.findById(id);
			model.addAttribute("listaUsuarios", respuestaServicio.getUsuarios().get(0));
			return new ModelAndView("editar");
		} catch (Exception e) {
			logger.error("Error al editar el usuario");
		}
		
		respuestaServicio = svc.findAll();
		return new ModelAndView("redirect:/admin");
	}
	
	// Página donde se realiza la edición de registro
	
	@PostMapping("/editar")
	public ModelAndView editar(@ModelAttribute UsuarioImdb usuario) {
		
		UsuarioImdbVO respuestaServicio = svc.update(usuario);
		
		if (respuestaServicio.getCodigo().equals("0")) {
			return new ModelAndView("redirect:/admin");
		} else {
			return new ModelAndView("error");
		}
		
	}
	
	// Método que busca todas las entradas por su usuario, y que contengan la palabra (o caractér) ingresada(o) al buscador 
	
	@GetMapping("/buscar")
	public ModelAndView buscarUsuario(Model model, @RequestParam String nombreUsuario) {
		
		UsuarioImdbVO respuestaServicio = new UsuarioImdbVO();
		respuestaServicio.setMensaje("No se ha encontrado el usuario");
		
		try {
			respuestaServicio = svc.findByUsuarioIgnoreCaseContaining(nombreUsuario);
			model.addAttribute("usuarioResultado", respuestaServicio.getUsuarios());
			return new ModelAndView("resultadousuario");
		} catch (Exception e) {
			logger.error("Error al buscar el usuario", e);
		}
		
		return new ModelAndView("redirect:/admin");
	}

}
