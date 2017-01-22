<%
Class.forName("com.mysql.jdbc.Driver"); // Load Driver
Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
%>