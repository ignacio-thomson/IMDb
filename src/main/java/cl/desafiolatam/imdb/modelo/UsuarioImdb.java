package cl.desafiolatam.imdb.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UsuarioImdb {
	
	@Id
	@Column(columnDefinition = "NUMERIC(19,0)")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String usuario;
	private String email;
	private String pass;
	private String passverificacion;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPassverificacion() {
		return passverificacion;
	}
	public void setPassverificacion(String passverificacion) {
		this.passverificacion = passverificacion;
	}
	
	@Override
	public String toString() {
		return "UsuarioImdb [id=" + id + ", usuario=" + usuario + ", email=" + email + ", pass=" + pass
				+ ", passverificacion=" + passverificacion + "]";
	}

}
