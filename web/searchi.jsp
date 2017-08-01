
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search</title>
          <script type="text/javascript">
function validate()
{
     var r= /^\s*\d+\s*$/;
    var x=document.search.id.value;
    
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

<h2><center>welcome to search menu</center></h2>
    <center><form name="search" method="post" onsubmit="return validate()" >
    enter the item id for search<input type="text"  name="id">
    <input type="submit" name="submit" value="search"/>
    
        </form></center>

<%
String id = request.getParameter("id");
if(id != null)
{

 
int pid = Integer.parseInt(id);
try
{

  String value=request.getParameter("id");
  int v=Integer.parseInt(value);
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root", "");
  Statement st=conn.createStatement();
  ResultSet rs = st.executeQuery("select * from item where I_id="+id+"");
  if(rs.next()){
      %>
      <center><h1>SEARCH RESULT</h1>
          <table> <h3> 
                  <tr><td>Item name: </td><td><%=rs.getString("I_name")%></td> </tr>
          <tr><td>category :</td><td><%=rs.getString("I_category")%> </td></tr>
          <tr><td>type :</td><td><%=rs.getString("I_type")%> </td></tr>
            <tr><td>model: </td><td><%=rs.getString("I_model")%> </td></tr>
            <tr><td>serial no </td><td><%=rs.getString("I_sno")%> </td></tr>
            <tr><td>asset code</td><td><%=rs.getString("asset_code")%> </td></tr>
             <tr><td>quantity</td><td><%=rs.getString("I_qty")%> </td></tr>
              <tr><td>status</td><td><%=rs.getString("I_status")%> </td></tr></h3>
          </h3>
          </table>    
      </center><%
  }

 %>
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
