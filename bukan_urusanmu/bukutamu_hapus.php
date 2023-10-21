<?php
include "cekbosku.php";
include_once "../bukan_file_config.php";
$idx = $_GET['id'];
$kueri = $lala->exec("delete from tbl_bukutamu where id = '$idx'");
if($kueri){
	echo '<meta http-equiv="refresh" content="0; url='.$_SERVER['PHP_SELF'].'">';
}
else {
	echo "<script>alert('Gagal');</script>";
	include "bukutamu_edit.php";
}
?>
