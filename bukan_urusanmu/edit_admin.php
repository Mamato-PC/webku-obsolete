<?php include "cekbosku.php"; ?> 
<html>
	<head>
		<link rel="stylesheet" href="gayaadmin.css" type="text/css">
		<title>Admin Page</title>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="1">
			<tr>
				<td><h1>Admin Page</h1></td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="1">
			<tr>
				<td width="240">
				<table width="240" border="0" cellpadding="0"  cellspacing="1">
				<tr bgcolor="#333333"><td><center>Menu</center></td></tr>
				<ul>
				<tr><td><li><a href="index.php">Home</a></li></td></tr>
				<tr><td><li><a href="artikel_tambah.php">Tambah Artikel</a></li></td></tr>
				<tr><td><li><a href="artikel_tampil.php">Edit Artikel</a></li></td></tr>
				<tr><td><li><a href="bukutamu_edit.php">Edit Bukutamu</a></li></td></tr>
				<tr><td><li><a href="edit_admin.php">Edit Admin</a></li></td></tr>
				<tr><td><li><a href="polling_tambah.php">Tambah Polling</a></li></td></tr>
				<tr><td><li><a href="polling_tampil.php">Edit Polling</a></li></td></tr>
				<tr><td><li><a href="logout.php">Logout</a></li></td></tr>
				</ul>
				</table>
				</td>
				<td width="616" valign="top">
					<table width="800" border="0" cellpadding="0" cellspacing="1">
						<tr bgcolor="#333333"><td><center>Edit Admin</center></td></tr>
					</table>
					<?php
					include_once "../bukan_file_config.php";
					$kueri = $lala->query("select * from tbl_admin");
					$kox = $kueri->fetch();
					?>
					<table width="25%" border="0" cellpadding="0" cellspacing="1">
						<form method="post">
						<tr><td>Username</td><td><input type="text" name="uname" value="<?=$kox['uname']?>"></td></tr>
						<tr><td>Password</td><td><input type="password" name="passwd"></td></tr>
						<tr><td>Email</td><td><input type="text" name="email" value="<?=$kox['email']?>"></td></tr>
						<tr><td></td><td><input type="submit" name="ubah" value="Kirim"></td></tr>
						</form>
					</table>
					<?php
					if(isset($_POST['ubah'])){
						include_once "../bukan_file_config.php";
						$uname = $_POST['uname'];
						$passwd = md5($_POST['passwd']);
						$email = $_POST['email'];
						
						$go = $lala->exec("update tbl_admin set uname = '$uname', passwd = '$passwd', email = '$email'
						where uid = 1");
						if($go){
							echo "Berhasil";
						}
						else {
							echo "<script>alert('Gagal');</script>";
						}
					}
					?>
				</td>
			</tr>
		</table>
	</body>
</html>