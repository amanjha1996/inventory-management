<%@ page import="java.sql.*" %>



<HTML>
    <HEAD>
        <TITLE>view </TITLE>
        <link rel="stylesheet" type="text/css" href="my2.css"/>

    </HEAD>

    <BODY background="aa2.jpg">
        <H1>The item check in transaction report  </H1>

        <% Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
      
            

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from new") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>transaction id</TH>
                <TH>ref transaction no</TH>
                <TH>po</TH>
                <TH>supplier</TH>
                <TH>invoice id</TH>
                <TH>date</TH>
              <TH>item name</TH>
               <TH>quantity</TH>
                <TH>location</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></td>
                <TD> <%= resultset.getString(3) %></td>
                <TD> <%= resultset.getString(4) %></td>
                <TD> <%= resultset.getString(5) %></td>
                <TD> <%= resultset.getString(6) %></TD>
                <TD> <%= resultset.getString(7) %></TD>
                <TD> <%= resultset.getString(8) %></TD>
                <TD> <%= resultset.getString(9) %></TD>
            </TR>
            <% } %>
        </TABLE>
        <br>  
        <div> <a href="checkin.jsp">new transaction</a></div>
        <br><br>
          </BODY>
</HTML>