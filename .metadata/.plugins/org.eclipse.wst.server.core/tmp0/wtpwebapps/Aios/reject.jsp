<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%@page import="java.sql.*;" %>

<%
	Connection connection;
	PreparedStatement statement;
	ResultSet result;
	Class.forName("com.mysql.jdbc.Driver");
	connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/aios?serverTimezone=UTC","root","");
		
	statement = connection.prepareStatement("UPDATE `leave_table` SET `status`='Rejacted' WHERE `id`= '"+request.getParameter("qid")+"';");
	statement.executeUpdate();
	
	response.sendRedirect(request.getContextPath()+"/status");
%>