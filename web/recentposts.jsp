<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<div class="col_one_third col_last">
    <div class="widget clearfix">
    	<h4>Recent Posts</h4>
            <div id="post-list-footer">
<%
    String date="",title="",ad_id="";
try{
    Class.forName("com.mysql.jdbc.Driver"); // Load Driver
    Connection con1 = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
    PreparedStatement smt1 = (PreparedStatement) con1.prepareStatement("select * from post_ad limit 0,3");
    ResultSet rs1=smt1.executeQuery();
    while(rs1.next()){
        title=rs1.getString("title");
        date=rs1.getString("date");
        ad_id=rs1.getString("post_id");
        out.println("<div class='spost clearfix'>");
            out.println("<div class='entry-c'>");
            out.println("<img src='"+rs1.getString("photo")+"' height='110px' width='190px' title='adv images' alt='Adv. Images' />");
            out.println("<div class='entry-title'>");
                    out.println("<h4><a href='single.jsp?x="+ad_id+"'>"+title+"</a></h4>");
		out.println("</div>");
		out.println("<ul class='entry-meta'>");
                    out.println("<li>"+date+"</li>");
		out.println("</ul>");
            out.println("</div>");
	out.println("</div>");
        
    }
    smt1.close();
    rs1.close();
    con1.close();
}
catch(Exception e1)
{
    out.println("<br/>Error with database : ");
}

%>
                                        
								</div>
							</div>

						</div>