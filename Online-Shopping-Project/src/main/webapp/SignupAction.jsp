<%@page import="com.demo.test.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
String country="";
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement stmnt=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
	stmnt.setString(1, name);
	stmnt.setString(2, email);
	stmnt.setString(3, mobileNumber);
	stmnt.setString(4, securityQuestion);
	stmnt.setString(5, answer);
	stmnt.setString(6, password);
	stmnt.setString(7, address);
	stmnt.setString(8, city);
	stmnt.setString(9, state);
	stmnt.setString(10, country);
	stmnt.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");

}
catch(Exception e)
{
	System.out.print(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	
}

%>