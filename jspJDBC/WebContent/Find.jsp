<html>
<body  bgcolor="yellow">

<%@page import="java.sql.*,java.util.*"%>

<%
String rol=request.getParameter("roll");
int r=Integer.parseInt(rol);

Class.forName("oracle.jdbc.driver.OracleDriver");
java.sql.Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kartik","oracle");
PreparedStatement pst = con.prepareStatement("select * from Student1 where roll=?");
pst.setInt(1,r);
       
        ResultSet rs=pst.executeQuery();
        if(rs.next()){
        	String n=rs.getString("name");
        	int a=rs.getInt("age");
        	int ro=rs.getInt("roll");
        	int co=rs.getInt("contact");
        	out.println("NAME: "+n);
        	out.println("<br><br>AGE: "+a);
        	out.println("<br><br>ROLL No. : "+ro);
        	out.println("<br><br>CONTACT : "+co);
        	}
        else
        	out.println("NO RECORDS FOUND");

 %>
     

</body>
</html>