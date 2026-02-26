<%
    String s1=(String)session.getAttribute("un");
            if(s1!=null)
            {
                %>
		<html>
<head>
<link rel="stylesheet" href="abc.css" />
</head>
<body>
    <%@include file="menuafterlogin.jsp" %>
<div id="mydata">
<center>
    <table cellpadding="30px" >
        <tr style='color:cyan;'>
        <th colspan="2" style="font-size:40px; font-family:Segoe Script;" >Wel-Come
        <%= s1 %>
        </th>
        </tr>
        </table>
</center>
</div>
</body>
</html>
<%
            }
            else
            {
                response.sendRedirect("logindemo.jsp");
            }
%>

