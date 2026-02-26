<%@page import="java.sql.*"  %>
<%
    String s1=request.getParameter("m1");
		String s2=request.getParameter("m2");
		String s3=request.getParameter("m3");
		String s4=request.getParameter("m4");
		out.println("<html>");
		out.println("<body>");
                if(s1.equals(s3))
                {
		try
		{   
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql:///amandb?useSSL=false","root","Aman");
		Statement st=con.createStatement();
		int x=st.executeUpdate("Update regis set UPASS='"+s4+"' where UNAME='"+s2+"'");
                if(x!=0)
                {
                response.sendRedirect("updatepass2.jsp");
                }
                else
                {
                response.sendRedirect("resetdemo1.jsp");
                }
		con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}
                }
                else
                {
                response.sendRedirect("resetpass1.jsp");
                }
		out.println("</body>");
		out.println("</html>");
//		out.close();
%>

