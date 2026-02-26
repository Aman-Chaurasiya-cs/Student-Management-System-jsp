<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="abc.css" />
</head>
<body>
<%@include file="menuafterlogin.jsp" %>
<div id="mydata">
<center>
<form action="searchdemo.jsp">
<table cellpadding="8px">
<tr>
<td>Enter RollNO.</td>
<td><input type="text" name="u11"class="t1" placeholder="Enter RollNO."></td>
</tr>
<tr>
<th colspan="2"><input type="submit" name="b1"class="b1" value="Search"></th>
</tr>
</table>
</form>
 <% 
     String s1=request.getParameter("b1");
     String s11=request.getParameter("u11");
     boolean bl=true;
 if(s1!=null)
 {
 try
 {
Class.forName("com.mysql.cj.jdbc.Driver"); 
Connection con=DriverManager.getConnection("jdbc:mysql:///amandb?useSSL=false","root","Aman");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from insertdemo where UROLLNO='"+s11+"'");
while(rs.next())
{
    bl=false;
%>
<center>
    <form action="updatedemo.jsp">
    <table cellpadding="8px">
        <tr>
        <th>NAME</th>
	 <td><%= rs.getString(1)%></td>
	</tr>
	<tr>
	<th>RNO</th>
	<td><%= rs.getString(2)%></td>
	</tr>
	<tr>
	<th>Phy</th>
        <td><%=rs.getString(3)%></td>
	</tr>
	<tr>
	<th>Che</th>
	<td><%=rs.getString(4)%></td>
	</tr>
	<tr>
	<th>Math</th>
        <td><%=rs.getString(5)%></td>
	</tr>
    </table>
        </form>
</center>
    

<%  
}
if(bl)
{
%>
 <center>
     <table >
         <tr style="color:cyan;">
             <th colspan="2" style="font-size:30px; font-family:Segoe Script;" >No Data Found for</th>
         </tr>
         <tr style="color:cyan;">
             <th colspan="2" style="font-size:30px; font-family:Segoe Script;" >Entered Rollno<%= " "+s11%> </th>
         </tr>
     </table>
 </center>
         <%
}
con.close();
 }
 catch(Exception e1)
 {
 out.print(e1);
 }
 }
 %>
</center>
</div>
</body>
</html>