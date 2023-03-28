<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
try{
	int account_number=Integer.parseInt(request.getParameter("account_number"));
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String confirm_password=request.getParameter("cnfpassword");
	double amount=Double.parseDouble(request.getParameter("amount"));
	String address=request.getParameter("address");
	long mobile_number=Long.parseLong(request.getParameter("mobile_number"));
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sdfcdb","sdfcdb");
	PreparedStatement ps=con.prepareStatement("insert into bank values(?,?,?,?,?,?,?)");
	ps.setInt(1, account_number);
	ps.setString(2, name);
	ps.setString(3, password);
	ps.setString(4, confirm_password);
	ps.setDouble(5, amount);
	ps.setString(6, address);
	ps.setLong(7, mobile_number);
	int i=ps.executeUpdate();
	out.print(i+" User Registered Successful");
	con.close();
	
}catch(Exception e){
	out.print(e);
}

%>