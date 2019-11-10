package metodista.pap.cinemeto.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import metodista.pap.cinemeto.controller.FilmeDAO;
import metodista.pap.cinemeto.model.Filme;

@WebServlet("/movies")
public class FilmeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(
			HttpServletRequest req,
			HttpServletResponse resp
	) throws ServletException, IOException {
		
		List<Filme> filmes = new FilmeDAO().listaFilme();
		
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		resp.setContentType("application/json");
		resp.setHeader("Access-Control-Allow-Origin", "*");
		resp.getWriter().write(new Gson().toJson(filmes));
	}
}
