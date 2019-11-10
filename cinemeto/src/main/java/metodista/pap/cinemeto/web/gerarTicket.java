package metodista.pap.cinemeto.web;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metodista.pap.cinemeto.controller.CompraDAO;


@WebServlet(urlPatterns= {"/gerar-ticket"})
public class gerarTicket extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5067574100851693415L;
	private CompraDAO compraDAO = new CompraDAO();
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
	
	
		String idFilme = req.getParameter("idFilme");
		String assentos = "teste";
		String pagamento = req.getParameter("pagamento");
		
		

		String idCompra = compraDAO.addCompra(
				idFilme,
				assentos, 
				pagamento,
				"10,00"
			
		);
		Cookie cookie; 
		cookie = new Cookie("idCompra", idCompra); 
		resp.addCookie(cookie);
		req.setAttribute("idCompra", idCompra);
		req.getRequestDispatcher("/ticketCompra.jsp").forward(req, resp);
		
		
		
		
		
		/*String titulo = req.getParameter("titulo");		
		//Tabela dados da Compra
		out.println("<h2>Compra Finalizada</h2>");
		out.println("<table border=\"1\">");
		out.println("<tr><td>Filme</td><td>Horario</td><td>Assento</td><td>Pagamento</td></tr>");
		ArrayList<Filme> fil = new FilmeDAO().listaFilme();
		List<Compra> com = new CompraDAO().listarCompra();
		for (Filme c : fil) {
			out.println("<tr><td>" + c.getTitulo() + "</td>" + "<td>" + c.getHorario()  + "</td></tr>");
			out.println("<p></p>");
			
		*/
		
		
		
	}
}