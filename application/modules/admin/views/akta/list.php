<?php

$form = new Zea();
$form->init('roll');
$form->setTable('akta');

$form->setNumbering(true);
$form->addInput('id','hidden');

$form->addInput('judul','plaintext');
$form->addInput('keterangan','plaintext');
// $form->addInput('dokumen','file');
// $form->setAccept('dokumen', '.pdf');
// $form->setFile('dokumen', 'document');

$form->addInput('user_id','dropdown');
$form->setAttribute('user_id','disabled');
$role = $this->db->get_where('user_role',['title'=>'jemaat'])->row_array();
$form->setLabel('user_id','Jemaat');
$form->removeNone('user_id');
$form->tableOptions('user_id','user','id','name','user_role_id = '.$role['id']);

$form->setEdit(true);
$form->setDelete(true);
$form->setUrl('admin/akta/clear_list');
$form->form();
