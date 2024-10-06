<?php
session_start();

if (isset($_SESSION['id']) && ($_SESSION['username'])){



?>
<!DOCTYPE html>
<html>
    <head>
       <title>Home</title>
       <link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
   
        <h1>Hello, <?php echo $_SESSION['name'];  ?></h1>       
         <a href="logout.php">Logout</a>

</body>
</html>
<?php
}else{
    header("Location: index1.php");
     exit();
}
    ?>