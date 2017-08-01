




<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root", "");
Statement st=null;
st=conn.createStatement();
ResultSet rs;
%>
<html>
    <head>
        <script type="text/javascript">
    function validator()
    { 
        var r=/^[A-Za-z]+$/ ;
       var x=document.frm.name.value;
     
       if(!x.match(r))
       {
         alert("invalid city name");  
           return false;
       }
       
    }
</script>
    </head>
    <body background="aa2.jpg">   
        <h2>welcome to update menu</h2>
        Please Enter city id <br><br>
<form name="frm" method="post" onsubmit="return validator()">
<table border = "0">
  <tr align="left" valign="top">
  <td>city ID:</td>
 <td><select id="sup" name="sup" >
        <%  rs =st.executeQuery("select * from item") ;
            while(rs.next()){ %>
            <option><%=rs.getString(1)%></option>
        <% } %>
      </select></td>
  </tr>
   <tr align="left" valign="top">
  <td>city name:</td>
  <td><input type="text" name ="name" /></td>
  </tr>
  <td>city status:</td>
  <td><input type="text" name ="status" /></td>
  </tr>
  <tr align="left" valign="top">
  <td></td>
  <td><input type="submit" name="submit" value="submit"/></td>
  </tr>
</table>
</form>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String sta=request.getParameter("status");


st.executeUpdate("update city set city_name='"+name+"',city_status='"+sta+"' where city_id="+id+" ");
%></body>
</html>