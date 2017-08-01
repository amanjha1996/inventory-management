<html>
    <head>
        <script type="text/javascript">
    function validator()
    { 
        var r=/^[A-Za-z]+$/ ;
       var x=document.frm.name.value;
     
       if(!x.match(r))
       {
         alert("invalid department name");  
           return false;
       }
       
    }
</script>
    </head>
    
   <body background="aa2.jpg">   
        <h2>welcome to update menu</h2>
 <%@page language="java" session="true" 
  contentType="text/html;charset=ISO-8859-1"  %> 
<font color="blue">Please Enter details </font><br><br>
<form name="frm" method="post" onsubmit="return validator()">
<table border = "0">
  <tr align="left" valign="top">
  <td>Department ID:</td>
  <td><input type="text" name ="id" /></td>
  </tr>
   <tr align="left" valign="top">
  <td>Department name:</td>
  <td><input type="text" name ="name" /></td>
  </tr>

  <tr align="left" valign="top">
  <td></td>
  <td><input type="submit" name="submit" value="submit"/></td>
  </tr>
</table>
</form>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root", "");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update department set D_name='"+name+"' where D_id="+id+" ");
%>
   </body>
</html>
