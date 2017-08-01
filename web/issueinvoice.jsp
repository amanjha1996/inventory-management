<%@ page import="java.sql.*" %>



<HTML>
    <HEAD>
        <TITLE>view </TITLE>
        <link rel="stylesheet" type="text/css" href="my2.css"/>

    </HEAD>

    <BODY>
        
        <form> 
    Enter the transaction id for invoice<input type="text" id="id" name="id"/>
    <input type="submit" value="submit" name="submit">
    </form>

        <% 
            String id=request.getParameter("id");
            
            Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
      
            

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from new1 where trno="+id+"") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>transaction id</TH>
                
                <TH>date</TH>
                <TH>employee</TH>
                <TH>department</TH>
              <TH>isid</TH>
               <TH>rid</TH>
                <TH>name</TH>
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
        <div> <a href="issue.jsp">new transaction</a></div>
        <br><br>
          </BODY>
</HTML>