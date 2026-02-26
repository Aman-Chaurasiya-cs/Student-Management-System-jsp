<%@page import="java.sql.*" %>
<%
    String s1=request.getParameter("u1");
		String s2=request.getParameter("u2");
		String s3=request.getParameter("u3");
		String s4=request.getParameter("u4");
		String s5=request.getParameter("u5");
		out.println("<html>");
		out.println("<body>");
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql:///amandb?useSSL=false","root","Aman");
		Statement st=con.createStatement();
		st.executeUpdate("insert into insertdemo values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
		con.close();
		response.sendRedirect("showall.jsp");
		}
		catch(Exception e1)
		{
			out.println(e1);
		}
		out.println("</body>");
		out.println("</html>");
%>

