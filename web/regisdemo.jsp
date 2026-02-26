<html>
<head>
<link rel="stylesheet" href="abc.css" />
<script type="text/javascript" src="xyz.js">
    </script>
</head>
<body>
    <%@include file="menubeforelogin.jsp" %>
<div id="mydata">
<center>
<form action="regisdemo1.jsp" name="form1">
<table cellpadding="15px">
<tr>
<td>Enter Name</td>
<td><input type="text" id="t1" name="u1" class="t1 "placeholder="Enter Name...">
<br>
<font id="s1" style="font-size:17px;" ></font>
</td>
</tr>
<tr>
<td>Enter Pass</td>
<td><input type="password"  id="t2" name="u2"class="t1" placeholder="Enter Password...">
<br>
<font id="s2" style="font-size:17px;" ></font>
</td>
</tr>
<tr>
<td>Enter C.N.</td>
<td><input type="text"  id="t3" name="u3" class="t1" placeholder="C.N.">
<br>
<font id="s3" style="font-size:17px;" ></font>
</td>
</tr>
<tr>
    <th colspan="2"><input type="button" class="b1" value="Register" onclick="demo()"></th>
</tr>
</table>
</form>
</center>
</div>
</body>
</html>