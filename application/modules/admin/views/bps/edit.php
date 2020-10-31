<?php defined('BASEPATH') OR exit('No direct script access allowed');

if(!empty($type_id))
{
	$form = new Zea();
	$form->init('edit');
	$form->setTable('bps');
	$id = @intval($_GET['id']);
	$form->setId($id);

	$form->addInput('tgl','text');
	$form->setType('tgl','date');
	$form->setLabel('tgl','Tanggal');

	$form->addInput('kode','text');
	$form->setUnique(['kode']);
	if(empty($id) && !empty($kode)){
		$form->setValue('kode',$kode.date('Ymd').$last_id);
		$form->addInput('tipe','static');
		$form->setValue('tipe',$type_id);
	}
	$form->setAttribute('kode',['readonly'=>'readonly']);

	$form->addInput('jemaat_id','dropdown');
	$form->tableOptions('jemaat_id','user','id','name','user_role_id = 3');
	$form->setLabel('jemaat_id','Jemaat');

	$form->addInput('pengurus_id','dropdown');
	$form->tableOptions('pengurus_id','user','id','name','user_role_id = 5');
	$form->setLabel('pengurus_id','Pengurus');

	$form->setRequired('All');
	$form->form();
}else{
	msg('halaman tidak valid','danger');
}