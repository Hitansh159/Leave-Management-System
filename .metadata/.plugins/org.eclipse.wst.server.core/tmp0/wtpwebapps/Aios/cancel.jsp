<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*;" %>

<%
	Connection connection;
	PreparedStatement statement;
	ResultSet result;
	Class.forName("com.mysql.jdbc.Driver");
	connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/aios?serverTimezone=UTC","root","");
		
	statement = connection.prepareStatement("DELETE FROM `leave_table` WHERE `id` = '"+request.getParameter("qid")+"';");
	System.out.println(statement);
	statement.executeUpdate();
	response.sendRedirect(request.getContextPath()+"/leave");
%>
    