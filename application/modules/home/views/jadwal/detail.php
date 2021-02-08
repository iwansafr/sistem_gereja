<?php if (!empty($data)): ?>
	<div class="panel">
		<div class="panel-body">
			<table class="table">
				<tr>
					<td>Kelompok</td>
					<td>: <?= $data['kelompok']['nama'] ?></td>
				</tr>
				<tr>
					<td>Kegiatan</td>
					<td>: <?= $data['kegiatan']['nama'] ?></td>
				</tr>
				<tr>
					<td>Pengurus</td>
					<td>: <?= $data['pengurus']['name'] ?></td>
				</tr>
				<tr>
					<td>Tempat</td>
					<td>: <?= $data['tempat'] ?></td>
				</tr>
				<tr>
					<td>Tgl</td>
					<?php $this->load->helper('content') ?>
					<td>: <?= content_date($data['tgl']) ?></td>
				</tr>
				<tr>
					<td>Jam</td>
					<td>: <?= $data['jam'] ?></td>
				</tr>
			</table>
		</div>
	</div>
<?php endif ?>