<?php defined('BASEPATH') OR exit('No direct script access allowed');

if(!empty($type_id) && !empty($has_katekisasi))
{
	$form = new Zea();
	$form->setHeading('Data');
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
		if($type_id == 4)
		{
			$form->addInput('tipe','dropdown');
			$form->setLabel('tipe','katekisasi');
			$form->setOptions('tipe',['41'=>'Baptis', '42'=>'Pernikahan']);

		}else{
			$form->addInput('tipe','static');
			$form->setValue('tipe',$type_id);
		}

	}
	$form->setAttribute('kode',['readonly'=>'readonly']);

	$form->addInput('jemaat_id','dropdown');
	$form->removeNone('jemaat_id');
	$form->tableOptions('jemaat_id','user','id','name','id = '.$_SESSION[base_url().'_logged_in']['id']);

	$form->setLabel('jemaat_id','Jemaat');

	$form->addInput('pengurus_id','dropdown');
	$form->removeNone('pengurus_id');
	$form->tableOptions('pengurus_id','user','id','name','user_role_id = 5');
	$form->setLabel('pengurus_id','Pengurus');

	$form->setRequired('All');
	$form->form();
}else{
	if (empty($has_katekisasi)) {
		msg('anda belum melakukan katekisasi, silahkan katekisasi terlebih dahulu','danger');
	}else{
		msg('halaman tidak valid','danger');
	}
}