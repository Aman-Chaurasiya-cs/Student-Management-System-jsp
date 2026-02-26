<%@page import="java.sql.*" %>
<%
    out.println("<html>");
		out.println("<head>");
out.println("<link rel='stylesheet'href='abc.css' />");
out.println("</head>");
out.println("<body>");
%>
<%@include file="menuafterlogin.jsp" %>
<%
out.print("<div id='mydata'>");

		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql:///amandb?useSSL=false","root","Aman");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from insertdemo");
		out.println("<center>");
		out.println("<table cellpadding='12'>");
		out.println("<tr>");
		out.println("<th>NAME</th>");
		out.println("<th>RNO</th>");
		out.println("<th>Phy</th>");
		out.println("<th>Che</th>");
		out.println("<th>Math</th>");
		out.println("</tr>");
		while(rs.next())
		{
		    out.println("<tr>");
			out.println("<td>"+rs.getString(1)+"</td>");
			out.println("<td>"+rs.getString(2)+"</td>");
			out.println("<td>"+rs.getString(3)+"</td>");
			out.println("<td>"+rs.getString(4)+"</td>");
			out.println("<td>"+rs.getString(5)+"</td>");
			out.println("</tr>");
		}
		
		out.println("</table>");
		out.println("</center>");
		con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
%>
