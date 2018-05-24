<html>
<body  bgcolor="yellow">
<%@page import="java.sql.*,java.util.*"%>
<%
String n=request.getParameter("name");

String ag=request.getParameter("age");
int a=Integer.parseInt(ag);

String rol=request.getParameter("roll");
int r=Integer.parseInt(rol);

String conn=request.getParameter("contact");
int co=Integer.parseInt(conn);

Class.forName("oracle.jdbc.driver.OracleDriver");
java.sql.Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kartik","oracle");
        PreparedStatement pst = con.prepareStatement("insert into student1 values(?,?,?,?)");
        pst.setString(1,n);
        pst.setInt(2,a);
        pst.setInt(3,r);
        pst.setInt(4,co);
        int res = pst.executeUpdate();
		if(res==1)
			out.println("INSERTED");
		else
			out.println("NOT INSERTED");

%>
</body>
</html>