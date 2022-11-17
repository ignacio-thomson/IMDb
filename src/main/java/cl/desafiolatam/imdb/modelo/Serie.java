package cl.desafiolatam.imdb.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Serie {
	
	@Id
	@Column(columnDefinition = "NUMERIC(19,0)")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String title;
	private String red;
	@Column(columnDefinition = "NUMERIC(19,0)")
	private double rating;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRed() {
		return red;
	}
	public void setRed(String red) {
		this.red = red;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	
	@Override
	public String toString() {
		return "Serie [id=" + id + ", title=" + title + ", red=" + red + ", rating=" + rating + "]";
	}

}
