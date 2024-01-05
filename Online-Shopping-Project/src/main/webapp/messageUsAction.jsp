 <%@page import="java.sql.*" %>
<%@page import="com.demo.test.ConnectionProvider"%>
<%
String email=session.getAttribute("email").toString();
String subject=request.getParameter("subject");
String body=request.getParameter("body");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement st=con.prepareStatement("insert into message(email,subject,body)values(?,?,?)");
	st.setString(1,email);
	st.setString(2,subject);
	st.setString(3,body);
	st.executeUpdate();
	response.sendRedirect("messageUs.jsp?msg=valid");
 
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("messageUs.jsp?msg=nvalid");

}

%>
