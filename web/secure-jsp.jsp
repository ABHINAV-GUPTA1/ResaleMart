<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
String loginMail=""; 
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");    
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires",-1);
    
 try
    {
    if(session.getAttribute("email").equals(null))
    {
       try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from resale1 where email=?");
            smt.setString(1,session.getAttribute("email").toString());
            ResultSet rs=smt.executeQuery();
            if(rs.next()){
                loginMail=rs.getString("email");
            }else{
                response.sendRedirect("login.jsp");
            }
        }catch(Exception e){
                response.sendRedirect("login.jsp");
        }
    }
    else
    {
       
    }
    }
    catch(Exception e)
    {
    response.sendRedirect("login.jsp");
    return;
    }
%>