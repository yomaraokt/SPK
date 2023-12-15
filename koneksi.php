<?php
$db="spk_dosen";

$koneksi=mysqli_connect('localhost','root', '', $db);
if(!$koneksi){
	die ("koneksi ke database Gagal..");
}
//else echo "koneksi Berhasil";
?>
