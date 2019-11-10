<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	
	<%

	String nome = (String) session.getAttribute("nome");
	if(nome == null){
		response.sendRedirect("login.jsp");
	}else{
		out.print("Bem vindo, "+nome+"<br/>");
	}

	%>


	<div id="navegacao">
			<div id="area">
			<h1 id="logo"><span class="verde">Cine</span><span style="color: #FFF;">Metô</span></h1>
			<div id="menu"> 
				<a href="index.html">Home</a> 
				<a href="games.html">Movie</a>
				<a href="apps.html">Sing Up</a>
				<span style="border-left: 1px solid #FFF; padding: 5px; "><a href="eletronicos.html">Sing In</a></span>

			</div>
		</div>
		</div>


		<div class="geral">
			<div style="vertical-align: middle;">
				
				<h2 id="h2-Cadastro" style="margin-top: 40px; margin-left: "><span><img style="height: auto;width: 100px;" src="https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/user_male2-512.png"></span>Olá ${message} Seja bem-vindo a sua Conta !!</h2>
			</div>
	</div>
	
	<div class="button_comprar">
		<button>
		
			<a href="compra.jsp">Comprar Ingresso </a>
		</button>	
	</div>
	
	
		<button>
			<a href="deslogar.jsp">Deslogar </a>
		</button>	

</body>

<footer>
    <small>Copyright - &copy;2019 by Go Tec</small>
</footer>
</html>
