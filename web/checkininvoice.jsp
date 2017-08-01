<html>
    <head>
        <link rel="stylesheet" type="text/css" href="my2.css"/>
    </head>

<body>
    <form> 
    Enter the transaction id for invoice<input type="text" id="id" name="id"/>
    <input type="submit" value="submit" name="submit">
    </form>
    <%@page import="java.sql.*,java.util.*"%>
    <% String id=request.getParameter("id");
 Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
Statement s1= con.createStatement();
Statement s2=con.createStatement();
ResultSet rs=s1.executeQuery("Select * from new where tno="+id+"");
%>
   
    
<center><h1> Invoice report</h1></center>

    
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
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></td>
                <TD> <%= rs.getString(3) %></td>
                <TD> <%= rs.getString(4) %></td>
                <TD> <%= rs.getString(5) %></td>
                <TD> <%= rs.getString(6) %></TD>
                <TD> <%= rs.getString(7) %></TD>
                <TD> <%= rs.getString(8) %></TD>
                <TD> <%= rs.getString(9) %></TD>
            </TR>
            <% } %>
        </TABLE>
       
</center>
            
        
    
    
</body>

</html>