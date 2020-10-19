<?php

$form = new Zea();

$form->init('edit');
$form->setTable('kegiatan');

$form->addInput('nama','text');
$form->setLabel('nama','nama kegiatan');

$form->addInput('kode','text');
$form->setAttribute('kode',['readonly'=>'readonly']);
if(empty($id)){
	$form->setValue('kode','KG'.date('Ymd').$last_id);
}
$form->setUnique(['kode']);


$form->addInput('tgl','text');
$form->setType('tgl','date');

$form->addInput('jam','text');
$form->setType('jam','time');

$form->addInput('jml_peserta','text');
$form->setType('jml_peserta','number');

$form->addInput('anggaran','text');
$form->setType('anggaran','number');

$form->addInput('proposal','file');
$form->form();