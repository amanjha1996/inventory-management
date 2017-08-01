<html>
<head><title> inventory manager </title>
<link rel="stylesheet" type="text/css" href="my1.css"/>
<link rel="stylesheet" href="style.css" type="text/css">

<script type="text/javascript">
    function validator()
    {
        var r=/^[A-Za-z]+$/ ;
       var x=document.ins.nama.value;
       if(!x.match(r))
       {
         alert("invalid location name");  
           return false;
       }
    }
</script>
</head>
</head>

<body bgcolor="#ECDADA">
<h1 class="solid"><center>Welcome to inventory management</center></h1>
<br>
<h2>please enter the following details for the location</h3>
<br>


<form name=ins action=insertl.jsp  method="post" onsubmit="return validator()">

Location_NAME<input type="text" name="nama"><br><br>
<input type="submit" name="submit" value="register">
</form>
</body>
</html>

