<%@ page import="java.sql.*"%>

<%

String name = request.getParameter("nome");
String lastName = request.getParameter("Sobrenome");
String rg = request.getParameter("rg");
String cpf = request.getParameter("cpf");
String phone = request.getParameter("tel");
String cep = request.getParameter("cep");
String email = request.getParameter("email");
String password = request.getParameter("password");

	
if(password != null){
	try{

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","password");
		PreparedStatement ps = conn.prepareStatement("INSERT INTO CLIENTE_CINE VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
		ps.setString(1, name);
		ps.setString(2, lastName);
		ps.setString(3, rg);
		ps.setString(4, cpf);
		ps.setString(5, phone);
		ps.setString(6, cep);
		ps.setString(7, email);
		ps.setString(8, password);
		int x = ps.executeUpdate();
		if(x != 0){
			out.print("Conectado!!");
			
		}else{
			out.print("Error ao conectar");
		}
	}catch(Exception e){
		out.print(e);
	}
}else{
	out.print("Error ao conectar!!");
}
	
%>