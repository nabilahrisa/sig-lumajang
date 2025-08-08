<div class="col-md-12">
	<!-- DATA TABLE -->
	<h3 class="title-5 m-b-35"><?= $title ?></h3>
	<div class="table-data__tool">
		<div class="table-data__tool-left">
			<div class="rs-select2--light rs-select2--md">
				<a href="<?= base_url('icon/add'); ?>" class="au-btn au-btn-icon au-btn--green au-btn--small">
					<i class="zmdi zmdi-plus"></i> Tambah</a>
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
				<th width="10%">No</th>
				<th width="30%">Nama Icon</th>
				<th width="30%">Icon</th>
				<th width="30&">Aksi</th>
			</tr>
		</thead>
		<tbody>
			<?php $no = 1;
			foreach ($icon as $key => $value) { ?>
				<tr>
					<td><?= $no++; ?></td>
					<td><?= $value->nama_icon ?></td>
					<td><img src="<?= base_url('marker/' . $value->icon)  ?>" width="60px"></td>
					<td>
						<a href="<?= base_url('icon/edit/' . $value->id_icon) ?>" class="btn btn-xs btn-success"><i class="fa fa-edit"></i></a>
						<a href="<?= base_url('icon/delete/' . $value->id_icon) ?>" onclick="return confirm('Apakah Data Ini Akan Dihapus..?')" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a>
					</td>
				</tr>
			<?php } ?>
		</tbody>
	</table>
