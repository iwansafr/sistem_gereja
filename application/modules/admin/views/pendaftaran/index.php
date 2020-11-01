<?php

if(!empty($user['name']))
{
	$form = new Zea();

	$form->init('edit');
	$form->setTable('kegiatan_user');

	$form->setHeading($user['name']);
	$form->setEditStatus(false);

	$form->addInput('kegiatan_id','dropdown');
	$form->setLabel('kegiatan_id','Pelayanan');
	$form->removeNone('kegiatan_id');
	$form->tableOptions('kegiatan_id','kegiatan','id','nama');
	$form->addInput('user_id','static');
	$form->setValue('user_id',$user['id']);

	$form->form();


	$roll = new Zea();

	$roll->init('roll');
	$roll->setTable('kegiatan_user');

	$roll->setWhere('user_id = '.$user['id']);
	$roll->setNumbering(true);
	$roll->addInput('id','hidden');
	$roll->addInput('kegiatan_id','dropdown');
	$roll->setLabel('kegiatan_id','Pelayanan');
	$roll->setAttribute('kegiatan_id','disabled');
	$roll->tableOptions('kegiatan_id','kegiatan','id','nama');

	$roll->setDelete(true);
	$roll->form();
}else{
	msg('maaf akun anda tidak bisa mendaftar menu ini','danger');
}