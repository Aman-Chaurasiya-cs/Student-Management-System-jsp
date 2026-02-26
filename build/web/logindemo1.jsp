<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("u1");
String s2=request.getParameter("u2");
        if(s1.isEmpty() || s2.isEmpty())
        {
        response.sendRedirect("logindemo.jsp");
        }
        else
        {
                try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql:///amandb?useSSL=false","root","Aman");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from regis where UNAME='"+s1+"' AND UPASS='"+s2+"'");
                
		if(rs.next())
		{
//                    HttpSession session=request.getSession();
                    session.setAttribute("un",s1);
//                    Cookie ck=new Cookie("un",s1);
//                    ck.setMaxAge(60*60);
//                    response.addCookie(ck);
		response.sendRedirect("menudemo.jsp");
		}
		else
		{
                    response.sendRedirect("logindemo2.jsp");
////                    RequestDispatcher rd=request.getRequestDispatcher("logindemo.html");
////                    rd.include(request, response);
////                    out.println("<center>");
////                    out.println("<p colspan='2' style='font-size:30px; color:red;' >Wrong Uname or Upass!</p>");
////                    out.println("</center>");
		}
		con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}
                }
%>