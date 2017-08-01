<html>
<head>
<title>welcome screen</title>
<link rel="stylesheet" type="text/css" href="my1.css"/>
</head>

<body>
<h2>
The details have been updated to the database 
</h2>

<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("nama");
String status=request.getParameter("st");


out.println("name="+name);
out.println("st="+status);



//try{
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
       Statement st= con.createStatement(); 
 int i=st.executeUpdate("insert into city values(default,'"+name+"','"+status+"')");
        
       
        out.println("Data is successfully inserted!");
        //}
        //catch(Exception e){
        //System.out.print(e);
        //e.printStackTrace();
        //}
        %>

<h3>
want to enter more <a href="ins.jsp"> click here</a> 
<br>
<br>
</body>
</html>

