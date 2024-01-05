<%@page import="com.demo.test.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category =request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");

try{
	Connection con=ConnectionProvider.getCon();
	Statement stmnt=con.createStatement();
	stmnt.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"'where id='"+id+"'");
	if(active.equals("no"))
	{
		stmnt.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
		
	}
    response.sendRedirect("allProductEditProduct.jsp?msg=done");
	}
catch(Exception e)
{
	response.sendRedirect("allProductEditProduct.jsp?msg=invalid");
	System.out.println(e);
	
}
%>