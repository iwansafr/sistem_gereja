<?php

if(!empty($role))
{
	$form = new Zea();

	$form->init('roll');
	$form->setTable('user');
	$form->setWhere(' user_role_id = '.$role['id']);

	$form->search();
	$form->setNumbering(true);
	$form->addInput('id','hidden');

	$form->addInput('username','plaintext');
	$form->setLabel('username','kode');

	$form->addInput('name','plaintext');
	$form->setLabel('name','nama');

	$form->addInput('phone','plaintext');
	$form->setLabel('phone','Nomor HP');

	$form->setEdit(true);
	$form->setDelete(true);
	$form->setEditLink($role['title'].'_edit?id=','id');

	$form->setUrl('admin/user/clear_'.$role['title'].'_list');
	$form->form();
}
