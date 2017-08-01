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
String remark=request.getParameter("remark");
String tno=request.getParameter("id");
String rtno=request.getParameter("rid");
String po=request.getParameter("po");
String sup=request.getParameter("sup");
String iid=request.getParameter("ino");
s1.executeUpdate("insert into trout values('"+tno+"','"+d+"','"+rtno+"','"+po+"','"+sup+"','"+iid+"')");      
s2.executeUpdate("insert into detail3 values('"+name+"','"+qty+"','"+remark+"','"+tno+"')");
        %>
        <div>  <a href="checkoutadd.jsp?id=<%=tno%>"><b>want to add more items for an existing transaction</b></a></div>
        <br><br>
        <div> <a href="checkout.jsp">new transaction</a></div>
        <br><br>
        <div> <a href="checkoutreport.jsp">view report</a> </div>