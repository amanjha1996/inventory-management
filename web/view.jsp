<%@ page import="java.sql.*" %>



<HTML>
    <HEAD>
        <TITLE>view </TITLE>
    </HEAD>

    <BODY background="aa2.jpg">
        <H1>The city Database Table </H1>

        <% Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
      
            

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from city") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>City_ID</TH>
                
                <TH>City_name</TH>
              
                <TH>City_status</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
            </TR>
            <% } %>
        </TABLE>
        <br>
   
    </BODY>
</HTML>