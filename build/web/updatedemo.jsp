  <%@page import="java.sql.*"%>
<% 
        String s12=request.getParameter("b1");    
        String s21=request.getParameter("u1");    
        String s22=request.getParameter("u2");    
        String s23=request.getParameter("u3");    
        String s24=request.getParameter("u4");    
        String s25=request.getParameter("u5");    
        if(s12!=null)
        {
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql:///amandb?useSSL=false","root","Aman");
                Statement st=con.createStatement();
        st.executeUpdate("Update insertdemo set UNAME='"+s21+"',UPHY='"+s23+"',UCHE='"+s24+"',UMATH='"+s25+"' where UROLLNO='"+s22+"'");
         response.sendRedirect("showall.jsp");
         con.close();
            }
            catch(Exception e1)
            {
            out.print(e1);
            }
        }
        %>