<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    
     <% response.sendRedirect("transactionhistory.jsp"); %> 

<%
String from_name=request.getParameter("from_name");
String To_name=request.getParameter("To_name");
String amt=request.getParameter("amt");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb","root","");
Statement st=conn.createStatement();



int i=st.executeUpdate("INSERT INTO `historyoftransaction`(`fromname`, `toname`, `amount`,`date`) VALUES ('"+from_name+"','"+To_name+"','"+amt+"',NOW())");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>