<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%
String from5=session.getAttribute("email").toString(),to=request.getParameter("y"),post_id=request.getParameter("x");
/*try{
    */%>
    <%
      //<%@include file="dbConnection.jsp" >  
   /*// PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from post_ad where post_id=?");
    smt.setString(1,post_id);
    ResultSet rs=smt.executeQuery();
    if(rs.next()){
      //  to=rs.getString("email");
    }
    smt.close();
    rs.close();
    con.close();
}
catch(Exception e)
{
    out.println("<br/>Error with database : ");
}*/
%>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
<!DOCTYPE html>
<html>
<head>
<title>Resale a Business Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- for-mobile-apps -->
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link href="css/jquery.uls.css" rel="stylesheet"/>
<link href="css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="js/jquery.uls.data.js"></script>
<script src="js/jquery.uls.data.utils.js"></script>
<script src="js/jquery.uls.lcd.js"></script>
<script src="js/jquery.uls.languagefilter.js"></script>
<script src="js/jquery.uls.regionfilter.js"></script>
<script src="js/jquery.uls.core.js"></script>
<script>
			$( document ).ready( function() {
				$( '.uls-trigger' ).uls( {
					onSelect : function( language ) {
						var languageName = $.uls.data.getAutonym( language );
						$( '.uls-trigger' ).text( languageName );
					},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				} );
			} );
		</script>
</head>
<body>
	<%@include file="header.jsp" %>
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
										<input class='form-control' value="<%=post_id%>" name='post_id' id='post_id' type='text'>
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
        <%@include file="footer.jsp" %>