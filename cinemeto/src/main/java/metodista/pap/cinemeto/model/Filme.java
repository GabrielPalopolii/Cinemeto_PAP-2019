package metodista.pap.cinemeto.model;

public class Filme {

	private String idFilme;
	private String titulo;
	private String sala;
	private String horario;

	

	public Filme(String idFilme, 
				 String titulo,
				 String sala,
				 String horario
				 ) {
				 this.idFilme = idFilme;
				 this.titulo = titulo;
				 this.sala = sala;
				 this.horario = horario;
				 
	}

	public String getIdFilme() {
		return idFilme;
	}
	
	public void setIdFilme(String idFilme) {
		this.idFilme = idFilme;
	}
	
	public String getTitulo() {
		return titulo;
	}
	
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getSala() {
		return sala;
	}

	public void setSala(String sala) {
		this.sala = sala;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}
	
	
	
}
