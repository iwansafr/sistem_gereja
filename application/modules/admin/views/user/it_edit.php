<?php

if(!empty($role))
{

	$form = new Zea();
	$form->init('edit');
	$form->setTable('user');
	$id = @intval($_GET['id']);
	$form->setId($id);

	$form->addInput('name','text');
	$form->setLabel('name','nama');
	$form->addInput('phone','text');
	$form->setLabel('phone','No Hp');

	$form->addInput('username','text');
	$form->setAttribute('username',['autocomplete'=>'off']);
	$form->setUnique(['username']);
	$form->addInput('password','password');
	$form->setEncrypt(['password']);
	$form->setAttribute('password',['autocomplete'=>'off']);
	$form->addInput('user_role_id','static');
	$form->setValue('user_role_id',$role['id']);


	$form->setRequired('All');
	$form->form();
}
