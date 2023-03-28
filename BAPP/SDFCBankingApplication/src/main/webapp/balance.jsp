<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1 style="color:red">&ensp;SDFC BANK&ensp;</h1><p></p>
<h3 style="color:red">&ensp;EXTRAORDINARY SERVICES&ensp;</h3><p></p>
<table border="1">
<tr><td>
<center><p></p>
&ensp;&ensp;&ensp;<a href="home.jsp">Home</a>&ensp;&ensp;&ensp;
<a href="newaccount.jsp">New Account</a>&ensp;&ensp;&ensp;
<a href="balance.jsp">Balance</a>&ensp;&ensp;&ensp;
<a href="deposit.jsp">Deposit</a>&ensp;&ensp;&ensp;
<a href="withdraw.jsp">Withdraw</a>&ensp;&ensp;&ensp;
<a href="transfer.jsp">Transfer</a>&ensp;&ensp;&ensp;
<a href="closeac.jsp">Close A/C</a>&ensp;&ensp;&ensp;
<a href="aboutus.jsp">About Us</a>&ensp;&ensp;&ensp;<p></p>
<p></p>
<p></p>
<h3 style="color:red">&ensp;BALANCE FORM&ensp;</h3><p></p>
<form action="BalanceCode.jsp" method="post">
<b>Account Number:</b>&ensp;<input type="text" name="account_number"><p></p>
<b>Name:</b>&ensp;<input type="text" name="name"><p></p>
<b>Password:</b>&ensp;<input type="password" name="password"><p></p>
<center><input type="submit" value="Submit">&ensp;&ensp;&ensp;<input type="submit" value="Clear"></center><p></p>

</form>

</td></tr>
</center>
</table>
</center>
</body>
</html>