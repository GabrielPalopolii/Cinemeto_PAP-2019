<%@ page import="metodista.pap.cinemeto.model.Filme, 
				 metodista.pap.cinemeto.controller.FilmeDAO, 
			 	 metodista.pap.cinemeto.controller.CompraDAO, 
				 metodista.pap.cinemeto.model.Compra, 
				 java.util.List"%>

<%
	Cookie[] cookies = request.getCookies(); 
	String idCompra = "1"; 
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
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<div id="navegacao">
			<div id="area">
			<h1 id="logo"><span class="verde">Cine</span><span style="color: #FFF;">Metô</span></h1>
			<div id="menu"> 
				<a href="principal.jsp">Home</a> 
				<a href="games.html">Movie</a>
				<a href="apps.html">Sing Up</a>
				<span style="border-left: 1px solid #FFF; padding: 5px; "><a href="eletronicos.html">Sing In</a></span>

			</div>
		</div>
		</div>
	
		


		<div>
		
	<form id="gerar-ticket" name="ticket" action="ticketCompra.jsp" method="post">
		<div style="width: 25%; float: right;">
			<img id="filme" src="teste.jpg">
			<h5 style="">CINE METO <span style="border-left: 1px solid black; padding-right: 5px;"></span></h5>
		</div>
	
		
		<label>ID de Compra: </label>
		<%out.print(idCompra); %>
	
		<div>
				<label>Section day:</label>
				<input type="date" name="data" id="data">
			</div>
		
		
		<%
		CompraDAO compraDAO = new CompraDAO();
	
		
		Compra pedidoCompra = null;
		if (idCompra != null){
			pedidoCompra = compraDAO.compraPorId(idCompra);
		}
		

		
		%>


		
		
		<label>Filme: </label>
			<% out.print(pedidoCompra.getFilme().getTitulo()); %>
		<br></br>
		<label>Horario: </label>
			<% out.print(pedidoCompra.getFilme().getHorario()); %>
			
		<br></br>
		<label>Sala: </label>
			<% out.print(pedidoCompra.getFilme().getSala()); %>
	
	
	
	
			<div id="div-select2" style="margin-top:5px;">
				<label for="Assentos">Seat:</label>
				<select id="assento" name="assentos">
				  <option value="A-1">A-1</option>
				  <option value="A-2">A-2</option>
				  <option value="A-3">A-3</option>
				  <option value="A-4">A-4</option>
				  <option value="B-1">B-1</option>
				  <option value="B-2">B-2</option>
				  <option value="B-3">B-3</option>
				  <option value="B-4">B-4</option>
				  <option value="C-1">C-1</option>
				  <option value="C-2">C-2</option>
				  <option value="C-3">C-3</option>
				  <option value="C-4">C-4</option>
				  <option value="D-1">D-1</option>
				  <option value="D-2">D-2</option>
				  <option value="D-3">D-3</option>
				  <option value="D-4">D-4</option>
				  <option value="E-1">E-1</option>
				  <option value="E-2">E-2</option>
				  <option value="E-3">E-3</option>
				  <option value="E-4">E-4</option>
				  <option value="E-5">E-5</option>
				  <option value="F-1">F-1</option>
				  <option value="F-2">F-2</option>
				  <option value="F-3">F-3</option>
				  <option value="F-4">F-4</option>
				  <option value="F-5">F-5</option>
				</select>	
			</div>
			<div>
			
		
				
				<label for="Ingresso">Ticket Type:</label>
				<select class="select-ciclos" name="ticket" onchange="document.getElementById('selecionado').innerHTML = '' + this.value;">   
					<option value="<sup>R$</sup><span>100,00</span>" selected="selected">Inteira</option>
					<option value="<sup>R$</sup><span>50,00</span>">Meia</option>
				</select>
			</div>
			
			<div style="margin-top: 40px;">
				<h2 id="h2-Address">Payment data</h2>
			</div>	
			<div>
				<label>Number of Card:</label>
				<input type="text" required="true" name="card" id="card" placeholder="1111 2222 3333 4444">
			</div>
			<div>
				<label>Expiration date</label>
				<input type="text" required="true" name="Expiration" id="Expiration" placeholder="Mês/Ano">
			</div>
			<div>
				<label>Security Code:</label>
				<input type="text" required="true" name="codigo" id="codigo" placeholder="" style="width: 10%">
			</div>

			<div style="margin-top: 30px;">
				<h2 id="h2-Address">Total</h2>
				<br>
				<h4 style="margin-bottom: 8px;">Valor:</h4>
				
				<div id="selecionado" class="price"><sup>R$</sup><span>100,00</span></div>
			</div>

			<div>
				<button class ="finalizar_compra">Buy</button>
			</div>
	</form>
		
		</div>
		
		
</body>

<footer>
    <small>Copyright - &copy;2019 by Go Tec</small>
</footer>
</html>