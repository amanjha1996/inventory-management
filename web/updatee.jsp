<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?zeroDateTimeBehavior=convertToNull","root", "");
Statement st=null;
st=conn.createStatement();
ResultSet rs;
%>

<html><head>
        
<script type="text/javascript">
    function validator()
    {
        var l=/^[A-Za-z]+$/ ;
        var n= /^\s*\d+\s*$/;
        var t=/[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
        var p=/[2-9]{2}\d{8}/;
       var a=document.frm.name.value;
       var b=document.frm.des.value;
       var c=document.frm.ec.value;
       var d=document.frm.mob.value;
       var e=document.frm.ph.value;
      var f=document.frm.mail.value;
        if(!b.match(l)){
         alert("invalid  name");  
           return false;
       }else
    if(!a.match(l)){
         alert("invalid designation");  
           return false;
       
            }else
        if(!c.match(n)){
         alert("invalid ecode");  
           return false;
       }
    else
        if(!d.match(p)){
         alert("invalid mobile no");  
           return false;
       }
   else
    if(!e.match(p)){
         alert("invalid phone no");  
           return false;
       }
       else if(!f.match(t)){
           alert("invalid email");
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
  <td>Employee ID:</td>
  <td><select id="sup" name="sup" >
        <%  rs =st.executeQuery("select * from employee") ;
            while(rs.next()){ %>
            <option><%=rs.getString(1)%></option>
        <% } %>
      </select></td>
  </tr>
   <tr align="left" valign="top">
  <td>employee  name:</td>
  <td><input type="text" name ="name" /></td>
  </tr>
  <tr> <td>designation:</td>
  <td><input type="text" name ="des" /></td>
  </tr>
  <tr><td>employee code:</td>
 <td><input type="text" name ="ec" /></td>
  </tr>
  <tr><td>email</td>
  <td><input type="text" name ="mail" /></td>
  </tr>
  <tr><td>mobile no</td>
  <td><input type="text" name ="mob" /></td>
  </tr>
  <tr><td>phone</td>
  <td><input type="text" name ="ph" /></td>
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
String des=request.getParameter("des");
String code=request.getParameter("ec");
String mail=request.getParameter("mail");
String mob=request.getParameter("mob");
String ph=request.getParameter("ph");



st.executeUpdate("update employee set E_name='"+name+"',E_designation='"+des+"',E_code='"+code+"',email='"+mail+"',mobile='"+mob+"',phone='"+ph+"' where E_id="+id+" ");
%></body>
</html>