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
String tno=request.getParameter("id");
//String rtno=request.getParameter("rid");
//String po=request.getParameter("po");
//String sup=request.getParameter("sup");
//String iid=request.getParameter("ino");
//s1.executeUpdate("insert into trin values('"+tno+"','"+rtno+"','"+po+"','"+sup+"','"+iid+"','"+d+"')");      
s2.executeUpdate("insert into detail values('"+name+"','"+qty+"','"+location+"','"+tno+"')");
        %>
      <div>  <a href="checkinadd.jsp?id=<%=tno%>"><b>want to add more items for an existing transaction</b></a></div>
         <br><br>
        <div> <a href="checkin.jsp">new transaction</a></div>
        <br><br>
        <div> <a href="checkinreport.jsp">view report</a> </div>