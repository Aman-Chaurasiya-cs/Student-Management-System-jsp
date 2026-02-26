<html>
<head>
<link rel="stylesheet" href="abc.css" />
</head>
<body>
<div id="mymenu">
<ul>
<li>Home</li>
<li><a href="logindemo.jsp">Login</a></li>
<li><a href="regisdemo.jsp">Registration</a></li>
<li><a href="aboutdemo.jsp">About</a></li>
<li><a href="contactdemo.jsp">Contact</a></li>
</ul>
</div>
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
<th colspan="2"style='color:cyan;'> Wrong UName or UPass..</th>
</tr> 
<tr>
<th colspan="2"><a href="resetpass.jsp" style="color:red;">Forget Password? </a></th>
</tr> 
</table>
</form>
</center>
</div>
</body>
</html>