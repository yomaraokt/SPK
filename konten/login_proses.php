<?php
	session_start();
	include "../koneksi.php";

	$username = $_POST['username'];
	$password = $_POST['password'];
	$jenis = $_POST['jenis'];

	if($jenis=="mahasiswa"){
		$query = mysqli_query($koneksi,"select * from user where username='$username' and password='$password' and jenis='$jenis'");
		$cek=mysqli_num_rows($query);

		if($cek){
			$_SESSION['nim'] = $username;
			?><script language="JavaScript">alert('Login Berhasil  !'); 
			document.location='../mahasiswa/index.php'</script><?php
		}else {
			echo mysql_error();
			?><script language="JavaScript">alert('Login Gagal  !'); 
			document.location='../index.php?ap=login'</script><?php
		}
	}

	if($jenis=="dosen"){
		$query = mysqli_query($koneksi,"select * from user where username='$username' and password='$password' and jenis='$jenis'");
		$cek=mysqli_num_rows($query);

		if($cek){
			$_SESSION['nim'] = $username;
			?><script language="JavaScript">alert('Login Berhasil  !'); 
			document.location='../dosen/index.php'</script><?php
		}else {
			echo mysqli_error();
			?><script language="JavaScript">alert('Login Gagal  !'); 
			document.location='../index.php?ap=login'</script><?php
		}
	}

	if($jenis=="pimpinan"){
		$query = mysqli_query($koneksi,"select * from user where username='$username' and password='$password' and jenis='$jenis'");
		$cek=mysqli_num_rows($query);

		if($cek){
			$_SESSION['nim'] = $username;
			?><script language="JavaScript">alert('Login Berhasil  !'); 
			document.location='../pimpinan/index.php'</script><?php
		}else {
			echo mysqli_error();
			?><script language="JavaScript">alert('Login Gagal  !'); 
			document.location='../index.php?ap=login'</script><?php
		}
	}

	if($jenis=="lppm"){
		$query = mysqli_query($koneksi,"select * from user where username='$username' and password='$password' and jenis='$jenis'");
		$cek=mysqli_num_rows($query);

		if($cek){
			$_SESSION['nim'] = $username;
			?><script language="JavaScript">alert('Login Berhasil  !'); 
			document.location='../lppm/index.php'</script><?php
		}else {
			echo mysqli_error();
			?><script language="JavaScript">alert('Login Gagal  !'); 
			document.location='../index.php?ap=login'</script><?php
		}
	}

?>