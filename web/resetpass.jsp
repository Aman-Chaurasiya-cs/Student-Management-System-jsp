<%@page import="java.util.*"%>
<%
    Random ran=new Random();
//                int x=ran.nextInt(35987);
		out.println("<html>");
		out.println("<head>");
out.println("<link rel='stylesheet'href='abc.css' />");
out.println("</head>");
out.println("<body>");
out.println("<div id='mymenu'>");
out.println("<ul><li><a href='logindemo.jsp'>Home</a></li><li><a href='aboutdemo.jsp'>About</a></li><li><a href='contactdemo.jsp'>Contact</a></li></ul></div><div id='mydata'>");
                out.println("<center>");
                out.println("<form action='updatepass.jsp'>");
                out.println("<table cellpadding='10px'>");
                out.println("<tr>");
//out.println("<th colspan='2'>"Random no='+x+'"</th>");
out.println("<td>Captcha </td>");
 out.println("<td><input type='text' name='m1' value='"+ran.nextInt(35987)+"'></td>");
                out.println("</tr>");
                out.println("<tr>");
out.println("<td>Enter Name</td>");
out.println("<td><input type='text' name='m2' placeholder='Enter Name...'></td>");
out.println("</tr>");
                out.println("<tr>");
out.println("<td>Enter Captcha</td>");
out.println("<td><input type='text' name='m3' placeholder='Enter Captcha...'></td>");
out.println("</tr>");
                out.println("<tr>");
out.println("<td>New Pass</td>");
out.println("<td><input type='text' name='m4' placeholder='New Pass...'></td>");
out.println("</tr>");
out.println("<tr>");
out.println("<th colspan='2'><input type='submit' class='b1' value='Re-Set'></th>");
out.println("</tr>");

                out.println("</table>");
                out.println("</form>");
                out.println("</center>");
                out.println("</div>");
		out.println("</body>");
		out.println("</html>");
		out.close();
%>


