
<!doctype html>
<html>
<head>
<title> check in </title>
<link rel="stylesheet" type="text/css" href="my2.css"/>
<script type="text/javascript">
function validate()
{
    var r= /^\s*\d+\s*$/;
    var x=document.jj.id.value;
    var y=document.jj.rid.value;
    var z=document.jj.po.value;
    var w=document.jj.ino.value;
    var a=document.jj.qty.value;
     if(!x.match(r))
    {
        alert("invalid tr id");
       return false;
        }
    else 
        if(!y.match(r))
    {
        alert("invalid ref id");
        return false;
    }
    else
    if(!z.match(r))
    {
        alert("invalid po");
        return false;
    }
    else
    if(!w.match(r))
    {
        alert("invalid invoice no");
        return false;
    }else
    if(!a.match(r))
    {
        alert("invalid qty");
        return false;
        
    }
    


}




</script>
<%@page import="java.util.Date"%>
</head>
<body><center><h2>Check out menu</h2></center>
<%@page import="java.sql.*,java.util.*"%>
<% 
 Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
Statement s1= con.createStatement();
Statement s2=con.createStatement();
ResultSet rs;
%>
<form name="jj" method="post" action="checkout1.jsp" onsubmit="return validate()">
    <h3>Transaction ID<input type="text" name="id"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         Date: <% Date d = new Date();
        out.print(d);%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Ref Transaction.no<input type="text" name="rid"/>
        <br><br>
        PO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" name ="po"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        supplier
        <select id="sup" name="sup" >
        <%  rs =s1.executeQuery("select * from supplier") ;
            while(rs.next()){ %>
            <option><%= rs.getString(2)%></option>
        <% } %>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Invoice no<input type="text" name="ino"/></h3>
        
        


________________________________________________________________________________________________________________________

        
            <table border="1" cellpadding="10" cellspacing="10" style="border-collapse: collapse"  width="100%" >
          
         
            <tr>
              <td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
              <b><font size="2" face="Verdana">Item Name</font></b></td>
              <td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
              <b><font size="2" face="Verdana">Quantity</font></b></td>
              <td width="25%" align="center" height="15" bgcolor="#9BC9D2" >
              <b><font size="2" face="Verdana">remark</font></b></td>
              <td width="15%" align="center" height="15" bgcolor="#9BC9D2" >
                  <b><font size="2" face="Verdana">
                          </font></b></td>
              
              
            </tr></table>
        
            <table border="1" cellpadding="10" cellspacing="10" style="border-collapse: collapse"  width="100%" >
                <tr><td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
                        <b><font size="2" face="Verdana">
                             
                            <select id="name" name="name">
        <%  rs =s1.executeQuery("select * from detail") ;
            while(rs.next()){ %>
            <option><%= rs.getString(1)%></option>
        <% } %>
        </select>
                            </font></b></td>
              <td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
                  <b><font size="2" face="Verdana"><input type="text" name="qty" id="qty"/></font></b></td>
              <td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
                  <b><font size="2" face="Verdana"><input type="text" name="remark" id="remark"/></font></b></td>
              
              <td width="15%" align="center" height="15" bgcolor="#9BC9D2" >
                  <input type="submit" value="add"/></td>   
                  </tr>
             </table> 
        
        
        
         </form>   
            
        <div>  <a href="checkoutreport.jsp" target=info > generate report</a></div>
        <div>  <a href="checkoutinvoice.jsp" target=info > get invoice</a></div>
        
           
        
            
            
</body>

</html>