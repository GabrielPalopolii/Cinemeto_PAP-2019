package metodista.pap.cinemeto.controller;

import java.util.ArrayList;
import java.util.List;

import metodista.pap.cinemeto.model.Filme;


public class FilmeDAO {
	
private static List<Filme> FILMES = new ArrayList<Filme>();
	
	static {
		FILMES.add(new Filme("1", "Coringa", " Sala 1  ", "14:00"));
		FILMES.add(new Filme("2", "Coringa", " Sala 2  ", "16:00"));
	
	}

	
	public void adicionar(Filme filme) {
		FILMES.add(filme);
	}
	
	
	public List<Filme> listaFilme() {
		return FILMES;
	}
	
	public Filme consultarPorFilme(String idFilme) {
		for(int i = 0; i < FILMES.size(); i ++) {
			if(FILMES.get(i).getIdFilme().equals(idFilme)) {
				return FILMES.get(i);
			}
		}
		return null;
	
	}
	
	
}
