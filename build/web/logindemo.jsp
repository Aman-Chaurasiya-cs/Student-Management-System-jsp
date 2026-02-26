<html>
<head>
<link rel="stylesheet" href="abc.css" />
</head>
<body>
    <%@include file="menubeforelogin.jsp" %>
<div id="mydata">
<center>
<form action="logindemo1.jsp">
<table cellpadding="12px">
<tr>
<td>Enter Name</td>
<td><input type="text" name="u1" class="t1" placeholder="Enter Name..."></td>
</tr>
<tr>
<td>Enter Pass</td>
<td><input type="password" name="u2" class="t1" placeholder="Enter Password..."></td>
</tr>
<tr>
<th colspan="2"><input type="submit" class="b1" value="Login"></th>
</tr> 
<tr>
<th colspan="2" style="color:snow;">
Don't have your account?
<a href="regisdemo.jsp"><input type ="button" class="b1" value="Sign UP"></a>
</th>
</tr> 
</table>
</form>
</center>
</div>
</body>
</html>