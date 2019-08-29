<?php
include 'cek-login.php';
if ($status == "superadmin"){
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

</body>
</html>
<?php
}else{
	header('location:logout.php');
}
?>