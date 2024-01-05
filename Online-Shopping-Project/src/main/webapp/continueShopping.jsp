 <%@page import="java.sql.*" %>
<%@page import="com.demo.test.ConnectionProvider"%>
<%
String email=session.getAttribute("email").toString();
String status="processing";
try{
	Connection con=ConnectionProvider.getCon();
    PreparedStatement st=con.prepareStatement("update cart set status=? where email=? and status='bill'");
	st.setString(1,status);
	st.setString(2,email);
	st.executeUpdate();
	response.sendRedirect("home.jsp");

}
catch(Exception e)
{
	System.out.println(e);
	
}
%>
