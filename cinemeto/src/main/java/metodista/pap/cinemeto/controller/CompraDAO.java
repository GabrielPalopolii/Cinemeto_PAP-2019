package metodista.pap.cinemeto.controller;

import java.util.ArrayList;
import java.util.List;

import metodista.pap.cinemeto.controller.FilmeDAO;
import metodista.pap.cinemeto.model.Compra;
import metodista.pap.cinemeto.model.Filme;

public class CompraDAO {

	
	
	private static List<Compra> COMPRAS = new ArrayList<Compra>();


	public String addCompra(
		String idFilme,  
		String assentos,
		String pagamento,
		String valor
	) {
		String idCompra = ""+(COMPRAS.size() + 1);
		FilmeDAO filmeDAO = new FilmeDAO();
		Filme filme = filmeDAO.consultarPorFilme(idFilme);
		
	
		if (filme != null) {
			Compra novaCompra = new Compra(
					filme, 
					idCompra,
					assentos, 
					pagamento,
					valor);
			COMPRAS.add(novaCompra);
			return idCompra;
			
		}
		return null;
	}

	public Compra compraPorId(String idCompra) {
		for(int i = 0; i < COMPRAS.size(); i ++) {
			if(COMPRAS.get(i).getIdCompra().equals(idCompra)) {
				return COMPRAS.get(i);
			}
		}
		return null;
	
	}
		

	public List<Compra> listarCompra(){
		return COMPRAS;
	}
	
	
	
}
