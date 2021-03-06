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
$form->addInput('tgl_mulai', 'plaintext');
$form->addInput('tgl_selesai', 'plaintext');

if(is_admin() || is_root() || role_is('pengurus'))
{
	$form->addInput('acc','checkbox');
}

$form->setEdit(true);
$form->setDelete(true);

$form->setUrl('admin/kegiatan/clear_list');
$form->form();
