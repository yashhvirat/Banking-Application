<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
try{
	int account_number=Integer.parseInt(request.getParameter("account_number"));
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sdfcdb","sdfcdb");
	PreparedStatement ps=con.prepareStatement("delete from bank where account_number=? and name=? and password=?");
	ps.setInt(1, account_number);
	ps.setString(2, name);
	ps.setString(3, password);
	int i=ps.executeUpdate();
	out.print(i+" Account Deleted Successful");
	con.close();
	
}catch(Exception e){
	out.print(e);
}

%>