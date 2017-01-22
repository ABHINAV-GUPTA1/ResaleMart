<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
 try
    {
    if(session.getAttribute("email") == null)
    {
    }
    else
    {
       out.println("<h1>You are already loggedin</h1>");
       //response.sendRedirect("profile.jsp");
       out.println("<script>setTimeout(function(){window.location.href='profile.jsp'},5000);</script>");
       return;
    }
    }
    catch(Exception e)
    {
        out.println("Error Occured! code register 001");
        return;
    }
%>