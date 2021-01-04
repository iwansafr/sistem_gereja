<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new Zea();
$form->init('roll');
$form->setTable('kelompok');

$form->setHeading('<a href="'.base_url('admin/kelompok/edit').'" class="btn btn-sm btn-default"><i class="fa fa-plus"></i> Tambah Kelompok</a>');

$form->search();
$form->setNumbering(true);
$form->addInput('id','plaintext');
$form->setLabel('id','Action');
$form->setPlainText('id',[base_url('admin/kelompok/tambah_member/{id}/tambah_member')=>'Tambah Member']);
$form->addInput('nama','plaintext');
$form->setLabel('nama','Nama Kelompok');

$form->addInput('kode','plaintext');
$form->addInput('user_id','dropdown');
$form->tableOptions('user_id','user','id','name','user_role_id = 3');
$form->setLabel('user_id','Ketua Kelompok');
$form->setAttribute('user_id','disabled');

$form->setEdit(true);
$form->setDelete(true);

$form->setUrl('admin/kelompok/clear_list');

$form->form();