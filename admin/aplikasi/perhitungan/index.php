<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">Perhitungan</h3>
			</div>
		</div><!--/.row-->

<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
				<div class="panel-heading">Data Peserta</div>
					<div class="panel-body">
						<table class="table">
						    <thead>
						    <tr>
								<th>No</th>
						        <th>Nama</th>
								<th>Asal SMP</th>
								<th>Alamat</th>
								<th>Jenis Kelamin</th>
								<th>Agama</th>
								<?php
								for($i=1;$i<=3;$i++)
									echo "<th>C$i</th>";
								?>
								
						    </tr>
						    </thead>
						    <tbody>
						    <?php
						    include "../koneksi.php";
						    $no=0;
							$query = "select * from siswa";
							$hasil = mysqli_query($koneksi,$query) or die("");
							while ($data = mysqli_fetch_array($hasil)) {
								$no++;
							?>
							<tr>
								<td><?php echo "".$no; ?></td>
								<td><?php echo $data['nama']; ?></td>
								<td><?php echo $data['asal_smp']; ?></td>
								<td><?php echo $data['alamat']; ?></td>
								<td><?php echo $data['jenkel']; ?></td>
								<td><?php echo $data['agama']; ?></td>
								<?php
									for($c=1;$c<=3;$c++){
										$tb = "c" . $c;
										?><td><?php echo round($data[$tb],2); ?></td><?php
									}
								?>
							<?php
							}
							mysqli_close($koneksi);
							?>

							</tr>
							</tbody>
						</table>
					</div>
					<div class="panel-footer"><center><a href="?ap=hitung&proses=1" class= "btn btn-primary">Hitung</a></center></div>
				</div>
			</div>
</div>

<?php
	if (isset($_GET['proses'])){
		if ($_GET['proses'] == 1){
			?>
			<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
				<div class="panel-heading">Perbaikan Bobot</div>
					<div class="panel-body">
						<table class="table">
							<thead>
						    <tr>
						    	<th>Bobot</th>
						<?php
						    include "../koneksi.php";
							$query = "select * from tb_kriteria";
							$hasil = mysqli_query($koneksi,$query) or die("");
							while ($data = mysqli_fetch_array($hasil)) {

							?>
						    
								<th text-algin="center"><?php echo "$data[nama_kriteria]";?></th>
						    
						    <?php
							}
							?>
							</tr>
						    </thead>
						    <tbody>
						    <tr>
						    	<td>Bobot Awal</td>
						    	<?php
						    	$qr = "select * from tb_kriteria";
							$b = mysqli_query($koneksi,$qr) or die("");
							while ($r = mysqli_fetch_array($b)) {

							?>
						    
								<td align="center"><?php echo "$r[bobot]";?></td>
						    
						    <?php
							}
							?>
							</tr>

							<tr>
						    	<td>Bobot Baru</td>
						    	<?php
						    	$arBB = array();
						    	$i=0;
						    	$sumB = mysqli_query($koneksi,"SELECT SUM(bobot) AS sum FROM tb_kriteria");
						    	$quB = mysqli_fetch_array($sumB);
    							$jml_bobot = $quB['sum'];
						    	$qr = "select * from tb_kriteria";
							$b = mysqli_query($koneksi,$qr) or die("");
							while ($r = mysqli_fetch_array($b)) {
								$bb = $r['bobot']/$jml_bobot;
								$arBB[$i]=$bb;
							?>
						    	
								<td align="center"><?php echo round($bb,4);?></td>
						    
						    <?php
						    $i++;
							}
							?>
							</tr>
							</tbody>
						</table>
					</div>
					
				</div>
			</div>
</div>

<?php
	$ps = mysqli_query($koneksi,"select * from siswa");
	while ($rps=mysqli_fetch_array($ps)){
		$vkt_s = 1;
		for($c=1;$c<=3	;$c++){
			$tb = "c" . $c;
			$ab = $c-1;
			$pgkt = pow($rps[$tb], $arBB[$ab]);
			//echo $rps[$tb] . " dipangkat " . $arBB[$ab] . " = " . $pgkt . "<br>";
			$vkt_s = $vkt_s * $pgkt;
		}
		$upd = mysqli_query($koneksi,"update siswa set vektor_s = '$vkt_s' where no_pendaftaran = '$rps[no_pendaftaran]'");
	}

	$v = mysqli_query($koneksi,"select sum(vektor_s) as all_vk from siswa");
	$vk = mysqli_fetch_array($v);
	$all_vk = $vk['all_vk'];
	
	$ps = mysqli_query($koneksi,"select no_pendaftaran, vektor_s from siswa");
	while ($rps=mysqli_fetch_array($ps)){
		$vk_v = $rps['vektor_s']/$all_vk;
		$up_v = mysqli_query($koneksi,"update siswa set vektor_v = '$vk_v' where no_pendaftaran='$rps[no_pendaftaran]'");
	}

?>
<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
				<div class="panel-heading">Hasil Seleksi</div>	
					<div class="panel-body">
						<table class="table">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama</th>
									<th>Vektor_S</th>
									<th>Vektor_V</th>
								</tr>
						    </thead>
						    <tbody>
						    	<?php
						    		$rk = 1;
						    		$pr = mysqli_query($koneksi,"select nama, vektor_s, vektor_v from siswa order by vektor_v desc");
						    		
						    		while ($dt=mysqli_fetch_array($pr)){
						    			echo "<tr>";
						    			echo "<td>$rk</td>";
						    			echo "<td>$dt[nama]</td>";
						    			echo "<td>" . round($dt['vektor_s'], 4) . "</td>";
						    			echo "<td>" . round($dt['vektor_v'], 4) . "</td>";
						    			echo "</tr>";
						    			$rk++;
						    		}
						    	?>
							</tbody>
						</table>
					</div>
					
				</div>
			</div>
</div>
			<?php
			// for($a=0;$a<10;$a++){
			// 	echo round($arBB[$a],4) . "<br>";
			// }
		}else{
			echo "adasda";
		}
	}
?>

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Hasil IPA/IPS</div>
            <div class="panel-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>IPA</th>
                            <th>IPS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $result = mysqli_query($koneksi, "select nama, vektor_s, vektor_v from siswa order by vektor_v desc"); // Ganti dengan query Anda

                        $IPA = array();
                        $IPS = array();

                        while ($row = mysqli_fetch_assoc($result)) {
                            if ($row["vektor_v"] < 0.08) {
                                $IPS[] = $row["nama"];
                            } else {
                                $IPA[] = $row["nama"];
                            }
                        }

                        $maxRows = max(count($IPA), count($IPS));

                        for ($i = 0; $i < $maxRows; $i++) {
                            echo "<tr>";
                            echo "<td>" . ($IPA[$i] ?? '') . "</td>";
                            echo "<td>" . ($IPS[$i] ?? '') . "</td>";
                            echo "</tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

