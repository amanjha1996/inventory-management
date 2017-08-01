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
String des=request.getParameter("des");
String code=request.getParameter("ecode");
String mail=request.getParameter("email");
String mob=request.getParameter("mob");
String ph=request.getParameter("phone");

out.println("name="+name);
out.println("designation="+des);
out.println("ecode="+code);
out.println("email="+mail);
out.println("mob="+mob);
out.println("phone="+ph);


//try{
        Class.forName("com.mysql.jdbc.Driver");
     java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
       Statement st= con.createStatement(); 
 int i=st.executeUpdate("insert into employee values(default,'"+des+"','"+name+"','"+code+"','"+mail+"','"+mob+"','"+ph+"')");
        
       
        out.println("Data is successfully inserted!");
        //}
        //catch(Exception e){
        //System.out.print(e);
        //e.printStackTrace();
        //}
        %>

<h3>
want to enter more <a href="inse.jsp"> click here</a> 
<br>
<br></h3>
</body>
</html>

