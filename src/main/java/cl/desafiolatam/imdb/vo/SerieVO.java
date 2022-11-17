package cl.desafiolatam.imdb.vo;

import java.util.List;

import cl.desafiolatam.imdb.modelo.Serie;

public class SerieVO extends GenericVO {
	
	List<Serie> series;

	public SerieVO(String mensaje, String codigo, List<Serie> series) {
		super(mensaje, codigo);
		this.series = series;
	}

	public SerieVO() {
		super();
	}

	public List<Serie> getSeries() {
		return series;
	}

	public void setSeries(List<Serie> series) {
		this.series = series;
	}

	@Override
	public String toString() {
		return "SerieVO [getMensaje()=" + getMensaje() + ", getCodigo()=" + getCodigo() + ", toString()="
				+ super.toString() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + "]";
	}

}
