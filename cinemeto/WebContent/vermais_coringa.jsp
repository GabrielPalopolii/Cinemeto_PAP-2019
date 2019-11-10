 <%@ page import="metodista.pap.cinemeto.model.Filme,
				 metodista.pap.cinemeto.model.Compra,
				 metodista.pap.cinemeto.controller.FilmeDAO, 
				 metodista.pap.cinemeto.controller.CompraDAO, 
				 java.util.List"%>

<!DOCTYPE html>
<html>
<head>
	<title>www.cinemeto.com.br/coringa</title>
	

</head>
	<link rel="stylesheet" type="text/css" href="css/style.css"></head>
	
<%
	FilmeDAO filmeDAO = new FilmeDAO(); 
	List<Filme> listaFilme = filmeDAO.listaFilme();
	CompraDAO compraDAO = new CompraDAO();
	List<Compra> listarCompra = compraDAO.listarCompra();
%>
	
	
<body>

	<div id="navegacao">
		<div id="area">
			<h1 id="logo"><span class="verde">Cine</span><span style="color: #FFF;">Metô</span></h1>
			<div id="menu"> 
				<a href="principal.jsp">Home</a> 
				<a href="games.html">Movie</a>
				<a href="cadastro.jsp">Sing Up</a>
				<span style="border-left: 1px solid #FFF; padding: 5px; "><a href="login.jsp">Sing In</a></span>

			</div>
		</div>
	</div>
	<div class="filmes_header">
		<h1 style="margin-top: 45px">Coringa</h1>
	</div>
	<div class="filme_sinopse">
				<img 
					src="https://ingresso-a.akamaihd.net/img/cinema/cartaz/22050-cartaz.jpg" 
					alt="filmes em cartaz"
					class="filme_image"
				>
				</div>
	<div class="conteudo_sinopse">
		<fieldset>
		<h1>Sinopse</h1>
		<p>Gotham City, 1981. Em meio a uma onda de violência e a uma greve dos lixeiros que deixou a cidade imunda, o candidato Thomas Wayne (Brett Cullen) promete limpar a cidade na campanha para ser o novo prefeito. É neste cenário que Arthur Fleck (Joaquin Phoenix) trabalha como palhaço para uma agência de talentos, com um agente social o acompanhando de perto, devido aos seus conhecidos problemas mentais. Após ser demitido, Fleck reage mal à gozação de três homens de Wall Street em pleno metrô e os mata. Os assassinatos iniciam um movimento popular contra a elite de Gotham City, da qual Thomas Wayne é seu maior representante.</p>
		<br>
		<p>Duração: 122 MIN</p>
		<p>Distribuidora: Warner Bros.</p>
		<p>Diretor: Todd Phillips</p>
		<p>Elenco: Joaquin Phoenix, Robert De Niro, Zazie Beetz</p>
		<p>Genero: Drama</p>
		</fieldset>
	</div>

<div class="button_comprar">
	
	</div>
	
	
</div>


<form id="pagamento-ingresso" name="ingresso" action="pagamento-ingresso" method="post">
		<select name="idFilme">
				<% for(int i = 0; i < listaFilme.size(); i++){ %>
					<option value="<%out.print(listaFilme.get(i).getIdFilme()); %>">
						<% out.print(listaFilme.get(i).getTitulo()); %>
						<% out.print(listaFilme.get(i).getSala()); %>
						<% out.print(listaFilme.get(i).getHorario()); %>
						
					</option>
				<% } %>
			</select>
			
			<button class ="finalizar_compra">Finalizar Compra</button>
</form>

</body>


</html>	