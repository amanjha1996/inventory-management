<html>
<head><title> inventory manager </title>
<link rel="stylesheet" type="text/css" href="my1.css"/>
<link rel="stylesheet" href="style.css" type="text/css">

<script type="text/javascript">
    function validator()
    {
        var r=/^[A-Za-z]+$/ ;
        var re=[0-1];
       var x=document.ins.nama.value;
       if(!x.match(r))
       {
         alert("invalid city name");  
           return false;
       }
    }
</script>
</head>

<body bgcolor="#ECDADA">
<h1 class="solid"><center>Welcome to inventory management</center></h1>
<br>
<h2>please enter the following details for the city</h3>
<br>


<form name="ins" action=insert.jsp  method="post" onsubmit="return validator()">
City_NAME<input type="text" id="nama" name="nama"><br><br>
City_STATUS<input type="number" id="st" name="st"><br><br>
<input type="submit" name="submit" value="register">
</form>
</body>
</html>

