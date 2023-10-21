<?php
if(isset($_POST['login'])){
	include_once "../bukan_file_config.php";
	$uname = addslashes($_POST['uname']);
	$passwd = addslashes(md5($_POST['passwd']));
	
	$kueri = $lala->query("select * from tbl_admin where uname = '$uname' and passwd = '$passwd'");
	$dos = $kueri->fetch();
	if($uname == $dos['uname'] and $passwd == $dos['passwd']){
		session_start();
		$_SESSION['admin'] = true;
		header("location:index.php");
	}
	else {
		die("Fail!");
		exit;
	}
}
else {
?>
<html>
	<head>
		<title>Login</title>
		<link rel="stylesheet" href="gayaadmin.css" type="text/css">
	</head>
	<body>
		<h1>Login Admin</h1>
		<table width="25%" align="center" border="0" cellpadding="0" cellspacing="1">
			<form method="post">
			<tr><td>Username</td><td><input type="text" name="uname"></td></tr>
			<tr><td>Password</td><td><input type="password" name="passwd"></td></tr>
			<tr><td><input type="submit" name="login" value="Login"></td></tr>
			</form>
		</table>
	</body>
</html>
<?php } ?>