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
				<td width="240" valign="top">
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
				<td width="1000" valign="top">
					<table width="1000" border="0" cellpadding="0" cellspacing="1">
						<tr bgcolor="#333333"><td><center>Edit Artikel</center></td></tr>
					</table>
					<table width="1000" border="0" cellpadding="0" cellspacing="1">
						<tr bgcolor="#dd0000">
							<td width="24">No</td>
							<td width="300">Judul Artikel</td>
							<td width="95">Kategori</td>
							<td width="200">Pengirim</td>
							<td width="80"><center>Menu</center></td>
						</tr>
						<?php
						include_once "../bukan_file_config.php";
						$kueri = $lala->query("select * from tbl_artikel order by id");
						foreach($kueri as $tampil){
						?>
						<tr>
							<td><?=$tampil['id']?></td>
							<td><?=$tampil['judul']?></td>
							<td><?=$tampil['kategori']?></td>
							<td><?=$tampil['pengirim']?></td>
							<td align="center"><a href="artikel_edit.php?id=<?=$tampil['id']?>">Edit</a> |
							<a href="../lengkap.php?id=<?=$tampil['id']?>"
							target="_blank">Lihat</a> | <a href="artikel_hapus.php?id=<?=$tampil['id']?>">Hapus</a></td>
						</tr>
						<?php } ?>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>