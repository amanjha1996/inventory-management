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
        var l=/^[A-Za-z]+$/ ;
        var n= /^\s*\d+\s*$/;
       var a=document.ins.nama.value;
       var b=document.ins.cat.value;
       var c=document.ins.type.value;
       var d=document.ins.model.value;
       var e=document.ins.sno.value;
       var f=document.ins.ac.value;
       var g=document.ins.qty.value;
       var h=document.ins.status.value;
      
        
      
           if(!a.match(l)){
         alert("invalid item name");  
           return false;
       }
       
       else
 
    if(!b.match(l)){
         alert("invalid item category");  
           return false;
       }
    else
        if(!c.match(l)){
         alert("invalid type");  
           return false;
       }
    else
        if(!d.match(l)){
         alert("invalid model name");  
           return false;
       }
   if(!e.match(n)){
         alert("invalid serial number");  
           return false;
       }
       if(!f.match(n)){
         alert("invalid asset code ");  
           return false;
       }
       if(!g.match(n)){
         alert("invalid item quantity");  
           return false;
       }
       if(!h.match(n)){
         alert("invalid item status");  
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
<form name="ins" method="post" onsubmit="return validator()">
<table border = "0">
  <tr align="left" valign="top">
  <td>Item id</td>
  <td><select id="sup" name="sup" >
        <%  rs =st.executeQuery("select * from item") ;
            while(rs.next()){ %>
            <option><%=rs.getString(1)%></option>
        <% } %>
      </select></td>
  </tr>
  <tr align="left" valign="top">
  <td>Item name:</td>
  <td><input type="text" name ="nama" /></td>
  </tr>
  <tr align="left" valign="top">
  <td>Item category:</td>
  <td><input type="text" name ="cat" /></td>
  </tr>
   <tr align="left" valign="top">
  <td>type</td>
  <td><input type="text" name ="type" /></td>
  </tr>
   <td>model</td>
  <td><input type="text" name ="model" /></td>
  </tr>
 <td>serial no</td>
  <td><input type="text" name ="sno" /></td>
  </tr>
   <td>asset code</td>
  <td><input type="text" name ="ac" /></td>
  </tr>
   <td>quantity</td>
  <td><input type="text" name ="qty" /></td>
  </tr>
   <td>status</td>
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
String name=request.getParameter("nama");
String cat=request.getParameter("cat");
String type=request.getParameter("type");
String model=request.getParameter("model");
String sno=request.getParameter("sno");
String ac=request.getParameter("ac");
String q=request.getParameter("qty");
String s=request.getParameter("status");

st.executeUpdate("update item set I_name='"+name+"',I_category='"+cat+"',I_type='"+type+"', I_model='"+model+"',I_sno='"+sno+"',asset_code='"+ac+"' ,I_qty='"+q+"' ,I_status='"+s+"' where I_id="+id+" ");
%>
    </body>
</html>