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
        alert("invalid no");
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
<body><center><h2>Check in menu</h2></center>

<%@page import="java.sql.*,java.util.*"%>



<form name="jj" method="post" action="checkin2.jsp" onsubmit="return validate()"><h3>
        


<% 
 Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
Statement s1= con.createStatement();
ResultSet rs;
String id=request.getParameter("id");
rs = s1.executeQuery("select * from trin where tno="+id+"");  
if(rs.next())
{
%>      Transaction ID<input type="text" name="id" value="<%=rs.getString("tno")%>"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        date <input type="text" name="date" value="<%=rs.getString("date")%>"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Ref Transaction.no<input type="text" name="rid" value="<%=rs.getString("rtno")%>"/>
        <br><br>
        PO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" name ="po" value="<%=rs.getString("po")%>"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        supplier<input type ="text" name="sup" value="<%=rs.getString("supplier")%>"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Invoice no<input type="text" name="ino" value="<%=rs.getString("invoiceid")%>"/></h3>
        
  
        
 <%
 }%>       


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
        <%  rs =s1.executeQuery("select * from item") ;
            while(rs.next()){ %>
            <option><%= rs.getString(2)%></option>
        <% } %>
        </select>
                            </font></b></td>
              <td width="30%" align="center" height="15" bgcolor="#9BC9D2" >
                  <b><font size="2" face="Verdana"><input type="text" name="qty" id="qty"/></font></b></td>
              <td width="25%" align="center" height="15" bgcolor="#9BC9D2" >
                  <b><font size="2" face="Verdana">
                      <select id="location" name="location">
        <%  rs =s1.executeQuery("select * from location") ;
            while(rs.next()){ %>
            <option><%= rs.getString(2)%></option>
        <% } %>
        </select>
                      </font></b></td>
              <td width="15%" align="center" height="15" bgcolor="#9BC9D2" >
                  <input type="submit" value="add"/></td>   
                  </tr>
             </table> 
        
        
        
        
         </form>   
            
 <div> <a href="checkinreport.jsp" target=info > generate report</a></div>
 <div>  <a href="checkininvoice.jsp" target=info > view invoice</a></div>          
            
            
</body>

</html>