<?php

// $user = $this->session->userdata(base_url('_logged_in'));
$form = new Zea();
$form->init('roll');
$form->setTable('akta');

$form->setWhere('user_id = '.$user_id);

$form->setNumbering(true);
$form->addInput('id','plaintext');
$form->setLabel('id','download');
$form->setPlaintext('id',[
	base_url('images/modules/akta/{id}/{dokumen}')=>'Download'
]);

$form->addInput('judul','plaintext');
$form->addInput('keterangan','plaintext');
$form->addInput('dokumen','hidden');
// $form->setClearGet('dokumen');
// $form->setLink('dokumen',base_url('images/akta'),'{id}/dokumen');
// $form->setAccept('dokumen', '.pdf');
// $form->setFile('dokumen', 'document');

$form->addInput('user_id','dropdown');
$form->setAttribute('user_id','disabled');
$role = $this->db->get_where('user_role',['title'=>'jemaat'])->row_array();
$form->setLabel('user_id','Jemaat');
$form->removeNone('user_id');
$form->tableOptions('user_id','user','id','name','user_role_id = '.$role['id']);

$form->form();
