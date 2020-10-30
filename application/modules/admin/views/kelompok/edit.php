<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new Zea();
$form->init('edit');
$form->setTable('kelompok');
$id = @intval($_GET['id']);
$form->setId($id);

$form->addInput('nama','text');
$form->setLabel('nama','Nama Kelompok');

$form->addInput('kode','text');
$form->setUnique(['kode']);
if(empty($id)){
	$form->setValue('kode','KP'.date('Ymd').$last_id);
}
$form->setAttribute('kode',['readonly'=>'readonly']);
$form->addInput('user_id','dropdown');
$form->tableOptions('user_id','user','id','name','user_role_id = 3 OR user_role_id = 5');
$form->setLabel('user_id','Ketua Kelompok');

$form->setRequired('All');
$form->form();