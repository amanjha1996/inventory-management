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
String cat=request.getParameter("cat");
String type=request.getParameter("type");
String model=request.getParameter("model");
String sno=request.getParameter("sno");
String ac=request.getParameter("ac");
String qty=request.getParameter("qty");
String status=request.getParameter("status");

out.println("name="+name);
out.println("category="+cat);
out.println("type="+type);
out.println("model="+model);
out.println("sno="+sno);
out.println("ac="+ac);
out.println("qty="+qty);
out.println("status"+status);


//try{
        Class.forName("com.mysql.jdbc.Driver");
     java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
       Statement st= con.createStatement(); 
 int i=st.executeUpdate("insert into item values(default,'"+name+"','"+cat+"','"+type+"','"+model+"','"+sno+"','"+ac+"','"+qty+"','"+status+"')");
        
       
        out.println("Data is successfully inserted!");
        //}
        //catch(Exception e){
        //System.out.print(e);
        //e.printStackTrace();
        //}
        %>

<h3>
want to enter more <a href="insi.jsp"> click here</a> 
<br>
<br></h3>
</body>
</html>

