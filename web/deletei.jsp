
 <%@page language="java" session="true" 
  contentType="text/html;charset=ISO-8859-1"  %> 
 
 <html><head>
            <script type="text/javascript">
function validate()
{
     var r= /^\s*\d+\s*$/;
    var x=document.frm.id.value;
    
      if(!x.match(r))
    {
        alert("invalid id");
       return false;
        }
    }
</script>
     </head>
     <font color="blue" >Please Enter item id to be moved to scrap </font><br><br>
<form name="frm" method="post" onsubmit="return validate()">
<table border = "0">
  <tr align="left" valign="top">
  <td>Item ID:</td>
  <td><input type="text" name ="id" /></td>
  </tr>

  <td><input type="submit" name="submit" value="submit"/></td>
  </tr>
</table>
</form>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root", "");
Statement st=null;
st=conn.createStatement();
int i=st.executeUpdate("update item set I_status='SCRAP' where I_id="+id+" ");
if(i>0)
out.println("status changed,item moved to scrap");
%>
 </html>