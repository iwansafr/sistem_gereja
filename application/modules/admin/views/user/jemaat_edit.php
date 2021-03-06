<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new Zea();
$form->init('edit');
$form->setTable('user');
$id = @intval($_GET['id']);
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

$form->setRequired('All');
$form->form();