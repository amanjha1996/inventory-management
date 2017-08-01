<%@ page import="java.sql.*" %>



<HTML>
    <HEAD>
        <TITLE>view </TITLE>
    </HEAD>

    <BODY background="aa2.jpg">
        <H1>The employee Database Table </H1>

        <% Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
      
            

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from employee") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>Employee_ID</TH>
                <TH>Designation</TH>
                <TH>Name</TH>
                <TH>Employee_code</TH>
                <TH>E-mail</TH>
                <TH>Mobile</TH>
              <TH>Phone</TH>
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
            </TR>
            <% } %>
        </TABLE>
        <br>
   
    </BODY>
</HTML>