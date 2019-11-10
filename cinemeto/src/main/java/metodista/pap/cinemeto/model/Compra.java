package metodista.pap.cinemeto.model;


public class Compra {

	private Filme filme;
	private String idCompra;
	private String assentos;
	private String pagamento;
	private String valor;
	
	public Compra(
			Filme filme,
			String idCompra, 
			String assentos, 
			String pagamento, 
			String valor
		) {
			this.filme = filme;
			this.idCompra = idCompra;
			this.assentos = assentos;
			this.pagamento = pagamento;
			this.valor = valor;
		}
	

	public Filme getFilme() {
		return filme;
	}
	
	public void setFilme(Filme filme) {
		this.filme = filme;
	}
	


	public String getAssentos() {
		return assentos;
	}



	public void setAssentos(String assentos) {
		this.assentos = assentos;
	}



	public String getPagamento() {
		return pagamento;
	}



	public void setPagamento(String pagamento) {
		this.pagamento = pagamento;
	}


	public String getIdCompra() {
		return idCompra;
	}


	public void setIdCompra(String idCompra) {
		this.idCompra = idCompra;
	}


	public String getValor() {
		return valor;
	}


	public void setValor(String valor) {
		this.valor = valor;
	}


	
	
	
}
