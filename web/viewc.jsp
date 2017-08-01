<%@ page import="java.sql.*" %>



<HTML>
    <HEAD>
        <TITLE>view </TITLE>
    </HEAD>

    <BODY background="aa2.jpg">
        <H1>The category Database Table </H1>

        <% Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
      
            

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from itemcategory") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>department_ID</TH>
                
                <TH>department_name</TH>
              
                
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
            </TR>
            <% } %>
        </TABLE>
        <br>
        <a href="deletec.jsp"  >delete</a>
    </BODY>
</HTML>