<%@ page import="java.sql.*" %>



<HTML>
    <HEAD>
        <TITLE>view </TITLE>
    </HEAD>

    <BODY background="aa2.jpg">
        <H1>The item Database Table </H1>

        <% Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
      
            

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from item") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>item id</TH>
                <TH>item name</TH>
                <TH>category</TH>
                <TH>type</TH>
                <TH>model</TH>
                <TH>s.no</TH>
              <TH>asset code</TH>
               <TH>quantity</TH>
                <TH>status</TH>
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
   
    </BODY>
</HTML>