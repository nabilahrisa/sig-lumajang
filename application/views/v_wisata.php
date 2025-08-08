<div class="col-md-12">
	<div class="card">
		<div class="card-header">
			<strong class="card-title mb-3"></strong>
			<link rel="icon" href="gambar/logo1.png" type="image/png">
		</div>
		<div class="panel-body">

			<table class="table table-bordered table-striped table-admin">
				<thead>
					<tr>
						<th width="10%">No</th>
						<th width="25%">Nama Wisata Alam</th>
						<th width="25%">Alamat</th>
						<th width="5%">Desa</th>
						<th width="5%">Kecamatan</th>
						<th width="20%">Gambar</th>
						<th width="10%">Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php $no = 1;
					foreach ($wisata as $key => $value) { ?>
						<tr>
							<td><?= $no++; ?></td>
							<td><?= $value->nama_tempat ?></td>
							<td><?= $value->alamat ?></td>
							<td><?= $value->desa ?></td>
							<td><?= $value->kec ?></td>

							<td><img src="<?= base_url('gambar/' . $value->gambar)  ?>" width="200px"></td>
							<td>
								<a href="<?= base_url('home/detail/' . $value->id_wisata) ?>" class="btn btn-xs btn-success"><i class="fa fa-eye"></i> Detail</a>
							</td>
						</tr>
					<?php } ?>
				</tbody>
			</table>


		</div>
	</div>
</div>
