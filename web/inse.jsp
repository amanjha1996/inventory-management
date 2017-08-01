<html>
<head><title> inventory manager </title>
<link rel="stylesheet" type="text/css" href="my1.css"/>
<link rel="stylesheet" href="style.css" type="text/css">
<script type="text/javascript">
    function validator()
    {
        var l=/^[A-Za-z]+$/ ;
        var n= /^\s*\d+\s*$/;
        var t=/[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
        var a=document.ins.des.value;
       var b=document.ins.nama.value;
       var c=document.ins.ecode.value;
       var d=document.ins.mob.value;
       var e=document.ins.phone.value;
      var f=document.ins.email.value;
        if(!b.match(l)){
         alert("invalid  name");  
           return false;
       }
       
       else
 
    if(!a.match(l)){
         alert("invalid deignation");  
           return false;
       }
    else
        if(!c.match(n)){
         alert("invalid ecode");  
           return false;
       }
    else
        if(!d.match(n)){
         alert("invalid mobile no");  
           return false;
       }
   else
    if(!e.match(n)){
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

<body bgcolor="#ECDADA">
<h2>please enter the following details for the city</h3>
<form name=ins action=inserte.jsp  method="post" onsubmit="return validator()">

Name        <input type="text" name="nama"><br> <br>
Designation <input type="text" name="des"><br> <br>
Employee_code<input type="text" name="ecode"><br> <br>
Email_id     <input type="text" name="email"><br> <br>
Mobile number<input type="text" name="mob"><br> <br>
phone         <input type="text" name="phone"><br><br>
<input type="submit" name="submit" value="register">
</form>
</body>
</html>

