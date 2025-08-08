<div class="col-md-12">
	<!-- DATA TABLE -->
	<h3 class="title-5 m-b-35"><?= $title ?></h3>
	<div class="table-data__tool">
		<div class="table-data__tool-left">
			<div class="rs-select2--light rs-select2--md">
				<a href="<?= base_url('wisata/add'); ?>" class="au-btn au-btn-icon au-btn--green au-btn--small">
					<i class="zmdi zmdi-plus"></i> Tambah </a>
			</div>
		</div>
	</div>

	<?php

	if ($this->session->flashdata('pesan')) {
		echo '<div class="alert alert-success alert-dismissible">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
		echo $this->session->flashdata('pesan');
		echo '</div>';
	}

	?>
	<table class="table table-bordered table-striped table-admin">
		<thead>
			<tr>
			    <th width="5%">No</th>
				<th width="25%">Nama Wisata Alam</th>
				<th width="25%">Alamat</th>
				<th width="5%">Desa</th>
				<th width="5%">Kecamatan</th>
				<th width="15%">Gambar</th>
				<th width="20%">Aksi</th>
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
					<td><img src="<?= base_url('gambar/' . $value->gambar)  ?>"></td>
					<td>
						<a href="<?= base_url('wisata/edit/' . $value->id_wisata) ?>" class="btn btn-sm btn-success"><i class="fa fa-edit"></i></a>
						<a href="<?= base_url('wisata/delete/' . $value->id_wisata) ?>" onclick="return confirm('Apakah Data Ini Akan Dihapus..?')" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
					</td>
				</tr>
			<?php } ?>
		</tbody>
	</table>
