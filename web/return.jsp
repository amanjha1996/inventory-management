
<!doctype html>
<html>
<head>
<title> check in </title>
<link rel="stylesheet" type="text/css" href="my2.css"/>
<script type="text/javascript">
function validate()
{
    var r= /^\s*\d+\s*$/;
    var re=/([1])\d+\s*/;
    var x=document.jj.id.value;
    
    var a=document.jj.qty.value;
     if(!x.match(re))
    {
        alert("invalid id");
       return false;
        }
    
    else
    if(!a.match(r))
    {
        alert("invalid qty");
        return false;
        
    }
    


}




</script>
<%@page import="java.util.Date"%>
</head>
<body><center><h2>return menu</h2></center>
<%@page import="java.sql.*,java.util.*"%>
<% 
 Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
Statement s1= con.createStatement();
Statement s2=con.createStatement();
ResultSet rs;
%>
<form name="jj" method="post" action="return1.jsp" onsubmit="return validate()"><h3>Transaction ID(start with 1)<input type="text" name="id"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         Date: <% Date d = new Date();
        out.print(d);%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
       <br><br>
        employee&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <select id="emp" name="emp" >
        <%  rs =s1.executeQuery("select * from employee") ;
            while(rs.next()){ %>
            <option><%= rs.getString(3)%></option>
        <% } %>
       
        </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    department   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <select id="dep" name="dep" >
        <%  rs =s1.executeQuery("select * from department") ;
            while(rs.next()){ %>
            <option><%= rs.getString(2)%></option>
        <% } %>
       
        </select>
    
    </h3>
        
        


________________________________________________________________________________________________________________________

        
            <table border="1" cellpadding="10" cellspacing="10" style="border-collapse: collapse"  width="100%" >
          
         
            <tr>
              <td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
              <b><font size="2" face="Verdana">Item Name</font></b></td>
              <td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
              <b><font size="2" face="Verdana">Quantity</font></b></td>
              <td width="25%" align="center" height="15" bgcolor="#9BC9D2" >
              <b><font size="2" face="Verdana">location</font></b></td>
              <td width="15%" align="center" height="15" bgcolor="#9BC9D2" >
                  <b><font size="2" face="Verdana">
                          </font></b></td>
              
              
            </tr></table>
        
            <table border="1" cellpadding="10" cellspacing="10" style="border-collapse: collapse"  width="100%" >
                <tr><td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
                        <b><font size="2" face="Verdana">
                             
                            <select id="name" name="name">
        <%  rs =s1.executeQuery("select * from new") ;
            while(rs.next()){ %>
            <option><%= rs.getString(7)%></option>
        <% } %>
        </select>
                            </font></b></td>
              <td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
                  <b><font size="2" face="Verdana"><input type="text" name="qty" id="qty"/></font></b></td>
              <td width="25%" align="center" height="15" bgcolor="#9BC9D2" >
                  <b><font size="2" face="Verdana">
                      <select id="location" name="location">
        <%  rs =s1.executeQuery("select * from new") ;
            while(rs.next()){ %>
            <option><%= rs.getString(9)%></option>
        <% } %>
        </select>
                      </font></b></td>
              <td width="15%" align="center" height="15" bgcolor="#9BC9D2" >
                  <input type="submit" value="add"/></td>   
                  </tr>
             </table> 
        
        
        
         </form>   
            
        <div>  <a href="returnreport.jsp" target=info > generate report</a></div>
        
        
           
        
            
            
</body>

</html>