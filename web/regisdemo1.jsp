<%@page import ="java.sql.*" %>
<% 
String s1=request.getParameter("u1");
String s2=request.getParameter("u2");
String s3=request.getParameter("u3");
//            RequestDispatcher rd=request.getRequestDispatcher("regisdemo.jsp");
//if(s1.isEmpty() || s2.isEmpty() || s3.isEmpty())//&& s3.equals(null))
//{
//response.sendRedirect("regisdemo.jsp");
//}
//else
//{
             try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql:///amandb?useSSL=false","root","Aman");
		Statement st=con.createStatement();
		st.executeUpdate("insert into regis values('"+s1+"','"+s2+"','"+s3+"')");
		response.sendRedirect("logindemo.jsp");
		con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}
//}
%>