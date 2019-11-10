<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="metodista.pap.cinemeto.model.Filme, 
				 metodista.pap.cinemeto.controller.FilmeDAO, 
			 	 metodista.pap.cinemeto.controller.CompraDAO, 
				 metodista.pap.cinemeto.model.Compra, 
				 java.util.List"%>

<%
	Cookie[] cookies = request.getCookies(); 
	String idCompra = null; 
	for (Cookie cookie : cookies) { 
		if (cookie.getName().equals("idCompra")) { 
			idCompra = cookie.getValue(); 
		} 
	}
	String nome = (String) session.getAttribute("nome");
	
	
	if(nome == null){
		response.sendRedirect("login.jsp?idCompra="+idCompra);
	}else{
		out.print("Bem vindo, "+nome+"<br/>");
		
		
	}

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
CompraDAO compraDAO = new CompraDAO();

Compra pedidoCompra = null;
if (idCompra != null){
	pedidoCompra = compraDAO.compraPorId(idCompra);
}

%>


	
	<label>ID de Compra: </label>
	<%out.print(idCompra); %>
	
	<label>Filme: </label>
		<% out.print(pedidoCompra.getFilme().getTitulo()); %>
	<br></br>
	<label>Horario: </label>
		<% out.print(pedidoCompra.getFilme().getHorario()); %>
		
	<br></br>
	<label>Sala: </label>
		<% out.print(pedidoCompra.getFilme().getSala()); %>
	
	

	


</body>

<footer>
    <small>Copyright - &copy;2019 by Go Tec</small>
</footer>
</html>