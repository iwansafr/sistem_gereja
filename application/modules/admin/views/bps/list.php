<?php defined('BASEPATH') OR exit('No direct script access allowed');

if(!empty($type_id))
{
	$form = new Zea();
	$form->init('roll');
	$form->setTable('bps');

	$form->search();
	$form->addInput('id','hidden');
	$form->setNumbering();
	$form->setWhere('tipe = '.$type_id);
	$form->addInput('tgl','plaintext');
	$form->setType('tgl','date');
	$form->setLabel('tgl','Tanggal');

	$form->addInput('kode','plaintext');
	$form->setUnique(['kode']);
	$form->setAttribute('kode',['readonly'=>'readonly']);

	$form->addInput('jemaat_id','dropdown');
	$form->tableOptions('jemaat_id','user','id','name','user_role_id = 3');
	$form->setAttribute('jemaat_id','disabled');
	$form->setLabel('jemaat_id','Jemaat');

	$form->addInput('pengurus_id','dropdown');
	$form->tableOptions('pengurus_id','user','id','name','user_role_id = 5');
	$form->setLabel('pengurus_id','Pengurus');
	$form->setAttribute('pengurus_id','disabled');

	$form->setEdit(true);
	$form->setDelete(true);

	$form->setRequired('All');
	$form->setUrl('admin/bps/clear_list/'.$type);
	$form->setEditLink(base_url('admin/bps/edit/'.$type.'/?id='),'id');
	$form->form();
}else{
	msg('halaman tidak valid','danger');
}