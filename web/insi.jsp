<html>
<head><title> inventory manager </title>
<link rel="stylesheet" type="text/css" href="my1.css"/>
<link rel="stylesheet" href="style.css" type="text/css">

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

<body bgcolor="#ECDADA">
<h2>please enter the following details for the item</h2>
<form name=ins action=inserti.jsp  method="post" onsubmit="return validator()">

Item Name<input type="text" name="nama"><br> <br>
Category<input type="text" name="cat"><br> <br>
Type<input type="text" name="type"><br> <br>
Model    <input type="text" name="model"><br> <br>
Serial No<input type="text" name="sno"><br> <br>
Asset Code     <input type="text" name="ac"><br><br>
Quantity     <input type="text" name="qty"><br><br>
Status   <input type="text" name="status"><br><br>
<input type="submit" name="submit" value="register">
</form>
</body>
</html>

