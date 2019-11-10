<%@ page import="java.sql.*"%>

<%


String nome = request.getParameter("nome");
String password = request.getParameter("password");

if((!(nome.equals(null) || nome.equals("")) && !(password.equals(null) || password.equals("")))){
	
	
try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","gn240300");
	
	PreparedStatement ps = conn.prepareStatement("SELECT * FROM CLIENTE_CINE WHERE NAME=? AND PASSWORD=?");
	ps.setString(1, nome);
	ps.setString(2, password);
	int x = ps.executeUpdate();
	if(x != 0){
		out.print("Logado com sucesso!!");
		//request.getRequestDispatcher("welcome.jsp").forward(request, response);
		session.setAttribute("nome", nome);
		response.sendRedirect("welcome.jsp");
		
	}else{
		out.print("Não é uma conta válida");
		
	}
	
	
	
}catch(Exception e){
	out.print(e);
	
}

}else{
	out.print("Não é uma conta válida");


}


%>