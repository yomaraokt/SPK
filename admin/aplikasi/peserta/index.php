<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">Data Peserta</h3>
			</div>
		</div><!--/.row-->

<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<table class="table">
						    <thead>
						    <tr>
								<th>Nama</th>
								<th>Asal SMP</th>
								<th>Alamat</th>
								<th>Jenis Kelamin</th>
								<th>Agama</th>
						    </tr>
						    </thead>
						    <tbody>
						    <?php
						    include "../koneksi.php";
						    $no=0;
							$query = "select * from siswa";
							$hasil = mysqli_query($koneksi, $query) or die("");
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
								<td><button class="btn btn-info btn-sm" id="btn-todo">Edit</button> 
									<button class="btn btn-warning btn-sm" id="btn-todo">Hapus</button></td>
							<?php
							}
							mysqli_close($koneksi);
							?>

							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
</div>