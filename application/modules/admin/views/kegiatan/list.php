<?php

$form = new zea();

$form->init('roll');
$form->setTable('kegiatan');
$form->setHeading('<a href="'.base_url('admin/kegiatan/edit').'" class="btn btn-sm btn-default"><i class="fa fa-plus"></i> Tambah Kegiatan</a>');
$form->search();

$form->addInput('id', 'hidden');
$form->setNumbering(true);
$form->addInput('nama', 'plaintext');
$form->addInput('kode', 'plaintext');
$form->addInput('tempat', 'plaintext');
$form->addInput('tgl', 'plaintext');

$form->setEdit(true);
$form->setDelete(true);

$form->setUrl('admin/kegiatan/clear_list');
$form->form();
