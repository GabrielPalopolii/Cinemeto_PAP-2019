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
		//out.print("Bem vindo, "+nome+"<br/>");
		
		
	}

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Insert title here</title>
</head>
<body>
<div class="espaco">
	<table>

		<th>Compra Realizada!!</th>
		<tr><td>
		<%
		CompraDAO compraDAO = new CompraDAO();
		
		
		Compra pedidoCompra = null;
		if (idCompra != null){
			pedidoCompra = compraDAO.compraPorId(idCompra);
		}

		%>
		</td></tr>
		
		<tr>
		<td>ID de Compra: </td>
		<td>
		<%out.print(idCompra); %>
		</td></tr>
			
		<tr>
		<td>Data: </td>
		<td>
		<% String data = request.getParameter("data");%>
		<% out.println(data);%>
		</td></tr>	
		
		<tr>	
		<td>Filme: </td>
		<td>
			<% out.print(pedidoCompra.getFilme().getTitulo()); %>
		</td></tr>
		
		 
		<tr>
		<td>Horario:</td>
		<td>
			<% out.print(pedidoCompra.getFilme().getHorario()); %>
		</td></tr>
		
		<tr>
		<td>Sala:</td>
		<td>
			<% out.print(pedidoCompra.getFilme().getSala()); %>
	</td></tr>
		
		<tr>
		<td>Assento:</td>
		<td>
			<% String assento = request.getParameter("assentos");%>
			<% out.println(assento);%>
			</td></tr>
			
		
		<tr>
		<td>Valor: </th>
		<td>
			<% String ticket = request.getParameter("ticket");%>
			<% out.println(ticket);%>
			</td></tr>
		
		
		<tr><td>
		<a href="principal.jsp">Comprar Mais</a>
		</td></tr>
		
		<%
		
		Cookie[] cookiesd = request.getCookies(); 
		for (Cookie cookie: cookiesd) { 
			cookie.setMaxAge(0); 
			response.addCookie(cookie); 
			}
		%>
		</table>
		</div>
</body>

<footer>
    <small>Copyright - &copy;2019 by Go Tec</small>
</footer>
</html>