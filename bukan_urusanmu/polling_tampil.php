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
				<td width="616" valign="top">
					<table width="800" border="0" cellpadding="0" cellspacing="1">
						<tr bgcolor="#333333"><td><center>Tampil Materi Polling</center></td></tr>
					</table>
					<table width="800" border="0" cellpadding="0" cellspacing="1">
						<tr>
							<td width="24">No</td>
							<td width="168">Pertanyaan</td>
							<td width="94">Status aktif</td>
							<td width="90">Menu</td>
						</tr>
						<?php
						include_once "../bukan_file_config.php";
						$kueri = $lala->query("select * from tbl_polling order by id");
						foreach($kueri as $cox){
						?>
						<tr>
							<td><?=$cox['id']?></td>
							<td><?=$cox['pertanyaan']?></td>
							<td><?=$cox['status']?></td>
							<td align="center"><a href="polling_edit.php?id=<?=$cox['id']?>">Edit</a> | <a href="polling_hapus.php?id=<?=$cox['id']?>">Hapus</a></td>
						</tr>
						<?php } ?>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>