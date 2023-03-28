<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
try{
	int account_number=Integer.parseInt(request.getParameter("account_number"));
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	double amount=Double.parseDouble(request.getParameter("amount"));
	double temp=amount;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sdfcdb","sdfcdb");
	
	PreparedStatement ps=con.prepareStatement("select amount from bank where account_number=? and name=? and password=?");
	ps.setInt(1, account_number);
	ps.setString(2, name);
	ps.setString(3, password);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		amount=rs.getDouble(1)-amount;
	}
	
	PreparedStatement ps1=con.prepareStatement("update bank set amount=? where account_number=? and name=? and password=?");
	ps1.setDouble(1, amount);
	ps1.setInt(2, account_number);
	ps1.setString(3, name);
	ps1.setString(4, password);
	ps1.executeUpdate();
}catch(Exception e){
		out.print(e);
}
	
	
try{
	int account_number=Integer.parseInt(request.getParameter("account_number"));
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	double amount=Double.parseDouble(request.getParameter("amount"));
	int target_account_number=Integer.parseInt(request.getParameter("target_account_number"));
	double temp=amount;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sdfcdb","sdfcdb");
	
	PreparedStatement ps=con.prepareStatement("select amount from bank where account_number=?");
	ps.setInt(1, target_account_number);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		amount=rs.getDouble(1)+temp;
		out.print("Amount Transfered Successful of Rs:"+temp+"/-"+"<p></p>");
	}
	
	PreparedStatement ps1=con.prepareStatement("update bank set amount=? where account_number=?");
	ps1.setDouble(1, amount);
	ps1.setInt(2, target_account_number);
	ps1.executeUpdate();
	
	con.close();
}
catch(Exception e){
	out.print(e);
}
	
%>