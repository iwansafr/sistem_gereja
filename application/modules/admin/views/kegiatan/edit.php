<?php

$form = new Zea();
$id = @intval($_GET['id']);
$form->setId($id);

$form->init('edit');
$form->setTable('kegiatan');

$form->addInput('nama', 'text');
$form->setLabel('nama', 'nama kegiatan');

$form->addInput('kode', 'text');
$form->setAttribute('kode', ['readonly' => 'readonly']);
if (empty($id)) {
	$form->setValue('kode', 'KG' . date('Ymd') . $last_id);
}
$form->setUnique(['kode']);


$form->addInput('tgl_mulai', 'text');
$form->setType('tgl_mulai', 'date');

$form->addInput('tgl_selesai', 'text');
$form->setType('tgl_selesai', 'date');

$form->addInput('jam', 'text');
$form->setType('jam', 'time');

$form->addInput('tempat', 'text');


$form->addInput('jml_peserta', 'text');
$form->setType('jml_peserta', 'number');
$form->setLabel('jml_peserta', 'Jumlah Peserta');

$form->addInput('anggaran', 'text');
$form->setType('anggaran', 'number');

$form->addInput('proposal', 'file');
$form->setAccept('proposal', '.pdf');
$form->setFile('proposal', 'document');
if (empty($id)) {
	$form->setRequired('All');
}
$form->setUnique(['kode']);
$form->form();
