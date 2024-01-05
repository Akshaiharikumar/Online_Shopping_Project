 <%@page import="java.sql.*" %>
<%@page import="com.demo.test.ConnectionProvider"%>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement st=con.prepareStatement("update users set address=?,city=?,state=?,country=? where email=?");
	st.setString(1,address);
	st.setString(2,city);
	st.setString(3,state);
	st.setString(4,country);
	st.setString(5,email);
	st.executeUpdate();
	response.sendRedirect("addChangeAddress.jsp?msg=valid");

}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addChangeAddress.jsp?msg=invalid");

}
%>