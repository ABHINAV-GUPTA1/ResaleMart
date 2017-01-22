<%@include file="secure-jsp.jsp" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%
String from5=session.getAttribute("email").toString(),to="",post_id=request.getParameter("x");
try{
    %><%@include file="dbConnection.jsp" %>
    <%
    PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from post_ad where post_id=?");
    smt.setString(1,post_id);
    ResultSet rs=smt.executeQuery();
    if(rs.next()){
        to=rs.getString("email");
    }
    smt.close();
    rs.close();
    con.close();
    if (to.equals(from5) ) {
        out.println("You can't send message to yourself");
        return;
    }
}
catch(Exception e)
{
    out.println("<br/>Error with database : ");
}
%>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
<!DOCTYPE html>
<html>
<head>
<%@include file="template_header.jsp" %>
<style>
#abhi{
	padding-top: 50px;
	
	font-weight: bold;
}
#ab{
	font-weight: bold;
}
#pad1{
	padding: 20px;
}
#pad2{
	padding: 20px;
}
</style>
<%@include file="template_header_body.jsp" %>
        		<div class='container'>
			<div class='panel panel-primary dialog-panel'>
				<div class='panel-heading'>
					<h5>Message</h5>
				</div>
				<div class='panel-body'>
					<form action="mesg" method="post" class='form-horizontal' role='form'>
						<div class='form-group' id='abhi'>
							<label class='control-label col-md-2 col-md-offset-2' for='to'>To</label>
							<div class='col-md-6'>
								<div class='form-group'>
									<div class='col-md-11'>
										<input class='form-control' readonly id='to' name='to' value="<%=to%>" type='email'>
									</div>
								</div>
							</div>
						</div>
						
						<div class='form-group' id='ab'>
							<label class='control-label col-md-2 col-md-offset-2' for='from5'>From</label>
							<div class='col-md-6'>
								<div class='form-group'>
									<div class='col-md-11'>
										<input class='form-control' readonly id='from5' value="<%=from5%>" name='from5' type='email'>
									</div>
								</div>
							</div>
						</div>
						
						<div class='form-group' id='ab'>
							<label class='control-label col-md-2 col-md-offset-2' for='message'>Message</label>
							<div class='col-md-6'>
								<div class='form-group'>
									<div class='col-md-11'>
										<textarea class='form-control' name='message' id='message' placeholder='Your meassage' rows='3'></textarea>
									</div>
								</div>	
							</div>
						</div>
						
						<div class='form-group' id='ab'>
							<label class='control-label col-md-2 col-md-offset-2' for='post_id'>Post_id</label>
							<div class='col-md-6'>
								<div class='form-group'>
									<div class='col-md-11'>
										<input readonly class='form-control' value="<%=post_id%>" name='post_id' id='post_id' type='text'>
									</div>
								</div>
							</div>
						</div>
						<!--//IF FILE IS INCLUDED WITH REGISTRATION
						<div class='form-group' id='ab'>
							<label class='control-label col-md-2 col-md-offset-2' for='upload'>Upload Picture</label>
							<div class='col-md-6'>
								<div class='form-group'>
									<div class='col-md-11'>
										<input class='form-control' id='upload' name='picture' accept="image/*" type='file'>
									</div>
								</div>
							</div>
						</div>-->
						
						<div class="form-group">
							<div class='col-md-offset-4 col-md-3'>
								<input type="submit"  class="btn btn-info" value="Submit" />
							</div>
						</div>	
						
					</form>
				</div>
			</div>
		</div>
        <%@include file="template_footer.jsp" %>