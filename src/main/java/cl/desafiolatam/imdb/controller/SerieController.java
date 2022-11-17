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

import cl.desafiolatam.imdb.modelo.Serie;
import cl.desafiolatam.imdb.service.SerieService;
import cl.desafiolatam.imdb.vo.SerieVO;

@Controller
public class SerieController {

	private final static Logger logger = LoggerFactory.getLogger(SerieController.class);

	@Autowired
	private SerieService svc;
	
	// Método para poblar la tabla de la página principal

	@GetMapping("/user")
	public String listarSeries(Model model, @RequestParam(defaultValue = "1") int p) {
		model.addAttribute("listaSeries", svc.findAll());
		return "home";
	}
	
	// Método para añadir series a la tabla de la base de datos

	@PostMapping("/agregarSerie")
	public ModelAndView agregarSerie(@ModelAttribute Serie serie) {
		
		SerieVO respuestaServicio = svc.add(serie);
		
		if (respuestaServicio.getCodigo().equals("0")) {
			return new ModelAndView("redirect:/user");
		} else {
			return new ModelAndView("error");
		}
	}
	
	// Método para eliminar series de la tabla de la base de datos
	
	@GetMapping("/eliminarSerie")
	public ModelAndView eliminarSerie(Model model, @RequestParam String idSerie, RedirectAttributes ra) {
		
		SerieVO respuestaServicio = new SerieVO();
		respuestaServicio.setMensaje("No fue posible eliminar la serie");
		
		try {
			Serie serieEliminar = new Serie();
			serieEliminar.setId(Integer.parseInt(idSerie));
			respuestaServicio = svc.delete(serieEliminar);
			return new ModelAndView("redirect:/user");
		} catch (Exception e) {
			logger.error("Ha ocurrido un error al eliminar la serie");
		}
		
		respuestaServicio = svc.findAll();
		ra.addAttribute("listaSeries", respuestaServicio);
		
		return new ModelAndView("redirect:/user");
	}
	
	// Metodo que recoje los parámetros de la entreda que se quiere editar, para posteriormente redirigir a la página de edición
	
	@GetMapping("/editarFormSerie")
	public ModelAndView editarForm(Model model, @RequestParam String idSerie) {
		
		SerieVO respuestaServicio = new SerieVO();
		respuestaServicio.setMensaje("No fue posible acceder a la pagina de edicion");
		
		try {
			Integer id = Integer.parseInt(idSerie);
			respuestaServicio = svc.findById(id);
			model.addAttribute("listaSeries", respuestaServicio.getSeries().get(0));
			return new ModelAndView("editarSerie");
		} catch (Exception e) {
			logger.error("Error al editar la serie");
		}
		
		respuestaServicio = svc.findAll();
		return new ModelAndView("redirect:/user");
		
	}
	
	// Página donde se realiza la edición de registro
	
	@PostMapping("/editarSerie")
	public ModelAndView editar(@ModelAttribute Serie serie) {
		
		SerieVO respuestaServicio = svc.update(serie);
				
		if (respuestaServicio.getCodigo().equals("0")) {
			return new ModelAndView("redirect:/user");
		} else {
			return new ModelAndView("redirect:/error");
		}
	}
	
	// Método que busca todas las entradas por su titulo, y que contengan la palabra (o caractér) ingresada(o) al buscador 
	
	@GetMapping("/buscarSerie")
	public ModelAndView buscarSerie(Model model, @RequestParam String nombreSerie) {
		
		SerieVO respuestaServicio = new SerieVO();
		respuestaServicio.setMensaje("No se ha encontrado el registro");
		
		try {
			respuestaServicio = svc.findByTitleIgnoreCaseContaining(nombreSerie);
			model.addAttribute("serieResultado", respuestaServicio.getSeries());
			return new ModelAndView("resultadoserie");
		} catch (Exception e) {
			logger.error("Error al buscar la serie", e);
		}
		
		return new ModelAndView("redirect:/user");
	}
}