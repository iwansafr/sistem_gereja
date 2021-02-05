<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new Zea();
$form->init('edit');
$form->setTable('user');
$form->setEditStatus(false);
$id = @intval($_SESSION[base_url().'_logged_in']['id']);
if(!empty($id))
{
	$form->setHeading('Edit biodata');
}else{
	$form->setHeading('Daftar member');
}
$form->setId($id);

$form->addInput('name','text');
$form->setLabel('name','nama');
$form->addInput('address','textarea');
$form->setLabel('address','alamat');
$form->addInput('phone','text');
$form->setLabel('phone','No Hp');
$form->addInput('birthdate','text');
$form->setLabel('birthdate','Tgl Lahir');
$form->setType('birthdate','date');

$form->addInput('username','text');
$form->setUnique(['username']);
if(empty($id)){
	$form->setValue('username',date('Ymd').$last_id);
}
$form->setAttribute('username',['readonly'=>'readonly']);
$form->addInput('password','password');
$form->setEncrypt(['password']);
$form->addInput('user_role_id','static');
$form->setValue('user_role_id',3);
$form->addInput('active','static');
$form->setValue('active',0);

$form->setRequired('All');
msg('pastikan anda mencatat username yang tertera untuk digunakan login nanti','warning');
if(!empty($_POST))
{
	msg('Silahkan tunggu aktivasi dari admin agar anda bisa menggunakan akun anda untuk login','info');
}
$form->form();