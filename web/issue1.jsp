<%@page import="java.util.Date"%>
<link rel="stylesheet" type="text/css" href="my2.css"/>


<%@page import="java.sql.*,java.util.*"%>
<% 
 Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
Statement s1= con.createStatement();
Statement s2=con.createStatement();
%>

<% 
    Date d = new Date();
String name=request.getParameter("name");
String qty=request.getParameter("qty");
String location=request.getParameter("location");
String emp=request.getParameter("emp");
String dep=request.getParameter("dep");
String tno=request.getParameter("id");
s1.executeUpdate("insert into tr values('"+tno+"','"+d+"','"+emp+"','"+dep+"','1','0')");      
s2.executeUpdate("insert into detail2 values('"+name+"','"+qty+"','"+location+"','"+tno+"')");
        %>
        <div>  <a href="issueadd.jsp?id=<%=tno%>"><b>want to add more items for an existing transaction</b></a></div>
        <br><br>
        <div> <a href="issue.jsp">new transaction</a></div>
        <br><br>
        <div> <a href="issuereport.jsp">view report</a> </div>