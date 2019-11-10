<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body class="content">

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
	

	<form action="connLogin.jsp" method="post" style="background: #FFF;">
		
	
		<div>
			<h2 id="h2">Sign in to your account</h2>
		</div>
			
			<div>
				<label for="nome">Login:</label>
				<input type="text" name="nome" id="nome" placeholder="Enter your login">
				
			</div>
			<div>
				<label for="password">Password:</label>
				<input type="password" name="password" id="password" placeholder="Type your password">
			</div>
			<div id="p">
				<a href="#" id="a">Forgot Password?</a>
			</div>
			<div>
				<button type="submit" name="submit" value="login" id="buttonLog"> Sign In</button>
			</div>

			<div>
				<div id="dividir">
					<div style="margin-left: 120px; position: relative; margin-top: 10px;">
						<h4>Don't have an account?</h4>
					</div>
					<div>
					
						<button type="submit" id="buttonCad" value="login">Sign Up</button>
					</div>
				</div>
				
			</div>
	</form>

</body>

<footer>
    <small>Copyright - &copy;2019 by Go Tec</small>
</footer>
</html>