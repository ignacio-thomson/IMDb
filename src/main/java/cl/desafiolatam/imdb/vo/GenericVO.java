package cl.desafiolatam.imdb.vo;

public class GenericVO {
	
	private String mensaje;
	private String codigo;
	
	public GenericVO(String mensaje, String codigo) {
		super();
		this.mensaje = mensaje;
		this.codigo = codigo;
	}

	public GenericVO() {
		super();
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	@Override
	public String toString() {
		return "GenericVisualObject [mensaje=" + mensaje + ", codigo=" + codigo + "]";
	}

}
