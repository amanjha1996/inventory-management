
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete</title>
               <script type="text/javascript">
function validate()
{
     var r= /^\s*\d+\s*$/;
    var x=document.delet.id.value;
    
      if(!x.match(r))
    {
        alert("invalid id");
       return false;
        }
    }
</script>
    </head>
    <body bgcolor="#ECDADA">
        <h1 class="solid"><center>Welcome to inventory management</center></h1>
<br>

<h2><center>welcome to deletion menu</center></h2>
    <center><form name="delet" method="post" onsubmit=" return validate()">
enter department id for deletion<input type="text"  name="id">
    <input type="submit" name="submit" value="delete"/>
    
        </form></center>

<%
String id = request.getParameter("id");
if(id != null)
{

 
int pid = Integer.parseInt(id);
try
{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root","");
      
String sql = "DELETE FROM department WHERE D_id="+pid;
PreparedStatement ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{%>
<%
out.print("Record Deleted Successfully");
%>
<%
}
else
{%>
<%
out.println("There is a problem in Deleting Record.");
out.print("Check Manually in your Database");
} %>
<%
}
catch(SQLException sqe)
{
request.setAttribute("error", sqe);
out.println(sqe);
}
}
%>
   <br>

</html>
