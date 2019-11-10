<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<div id="navegacao">
			<div id="area">
			<h1 id="logo"><span class="verde">Cine</span><span style="color: #FFF;">Metô</span></h1>
			<div id="menu"> 
				<a href="principal.jsp">Home</a> 
				<a href="games.html">Movie</a>
				<a href="apps.html">Sing Up</a>
				<span style="border-left: 1px solid #FFF; padding: 5px; "><a href="login.jsp">Sing In</a></span>

			</div>
		</div>
		</div>

		<form id ="cadastro"action="connCadastro.jsp" method="post">
			<div>
				<h2 id="h2-Cadastro">Sign in to your account</h2>
			</div>
			<div >
				<label for="nome">Name:</label>
				<input type="text" name="nome" id="nome" placeholder="Enter your Name">
				
			</div>
			<div style="margin-left: 500px; margin-top: -75px">
				<label for="Sobrenome">Last Name:</label>
				<input type="text" name="Sobrenome" id="Sobrenome" placeholder="Enter your Last Name">	
			</div>

			<div >
				<label for="Cpf">CPF:</label>
				<input type="text" name="cpf" id="cpf" placeholder="Enter you CPF (XXX.XXX.XXX-XX)">	
			</div>

			<div style="margin-left: 500px; margin-top: -75px">
				<label for="Sobrenome">RG:</label>
				<input type="text" name="rg" id="rg" placeholder="Enter you RG (XX.XXX.XXX-XX)">	
			</div>
			
			<div >
				<label for="Tel">Phone:</label>
				<input type="text" name="tel" id="tel" placeholder="Enter you Phone (DDD)99999-9999">	
			</div>

			<div style="margin-left: 500px; margin-top: -55px">
				<label for="Nascimento">Birthday:
				<input type="date" name="Nascimento" id="date">
				</label>	
			</div>

			<div style="margin-top: 30px;">
				<label for="CEP">CEP:</label>
				<input type="text" name="cep" id="cep" placeholder="Enter you Phone (DDD)99999-9999">	
			</div>

			<div style="float: right; margin-top: -275px; margin-right:50px;">
				<label for="gender">Gender</label>
				<input type="radio" name="gender" value="male" > <span style="font-weight: bold;">Male</span>	
				<input type="radio" name="gender" value="male" id="radio"> <span style="font-weight: bold;">Female</span>
				<input type="radio" name="gender" value="male" id="radio"> <span style="font-weight: bold;">Other</span>
			</div>

			<div>
				<h2 id="h2-Address">Address</h2>
			</div>			
			<div style="margin-top: 15px;">
				<label for="Rua">Street:</label>
				<input type="text" name="Rua" id="Rua" placeholder="Enter your Street">	
			</div>

			<div style="float: right; margin-top: -70px; margin-right: 600px;">
				<label for="Numero">Number:</label>
				<input type="text" name="Numero" id="Numero" placeholder="">	
			</div>

			<div style="float: right; margin-top: -70px;margin-right:-500px;">
				<label for="Complemento">Complement:</label>
				<input type="text" name="Complemento" id="Complemento" placeholder="">	
			</div>
		
		<div>
				<label for="Cidade">City:</label>
				<input type="text" name="Cidade" id="Cidade" placeholder="">	
		</div>
			<div id="div-select">
				<label for="Estado">State:</label>
				<select id="select">
				  <option value="Acre">AC</option>
				  <option value="Alagoas">AL</option>
				  <option value="Amapá">AP</option>
				  <option value="Amazonas">AM</option>
				  <option value="Bahia">BA</option>
				  <option value="Ceara">CE</option>
				  <option value="Distrito Federal">DF</option>
				  <option value="Espirito Santo">ES</option>
				  <option value="Goias">GO</option>
				  <option value="Maranhao">MA</option>
				  <option value="Mato Grosso">MT</option>
				  <option value="Mato Grosso do Sul">MS</option>
				  <option value="Minas Gerais">MG</option>
				  <option value="Para">PA</option>
				  <option value="Paraiba">PB</option>
				  <option value="Parana">PR</option>
				  <option value="Pernambuco">PE</option>
				  <option value="Piaui">PI</option>
				  <option value="Rio de Janeiro">RJ</option>
				  <option value="Rio Grande do Sul">RS</option>
				  <option value="Rondonia">RO</option>
				  <option value="Roraima">RR</option>
				  <option value="Santa Catarina">SC</option>
				  <option value="Sao Paulo">SP</option>
				  <option value="Sergipe">SE</option>
				  <option value="Tocantins">TO</option>
				</select>	
			</div>

			<div>
				<h2 id="h2-Address">Account</h2>
			</div>	
			<div>
				<label>Email:</label>
				<input type="email" name="email" id="email" placeholder="teste@teste.com.br">
			</div>
			<div>
				<label>Confirm Email:</label>
				<input type="email" name="email2" id="email2" placeholder="teste@teste.com.br">
			</div>
			<div>
				<label>Password:</label>
				<input type="password" name="password" id="password" placeholder="Enter your Password">
			</div>

			<div>
				<button type="submit" value="register" id="buttonReg">Register</button>
			</div>

		</form>

			
</body>

<footer>
    <small>Copyright - &copy;2019 by Go Tec</small>
</footer>
</html>