<?php

$form = new Zea();
$form->init('edit');
$form->setTable('akta');
$form->setId(@intval($_GET['id']));

$form->addInput('judul','text');
$form->addInput('keterangan','textarea');
$form->addInput('dokumen','file');
$form->setAccept('dokumen', '.pdf');
$form->setFile('dokumen', 'document');

$form->addInput('user_id','dropdown');
$role = $this->db->get_where('user_role',['title'=>'jemaat'])->row_array();
$form->setLabel('user_id','Jemaat');
$form->removeNone('user_id');
$form->tableOptions('user_id','user','id','name','user_role_id = '.$role['id']);

$form->setRequired('All');
$form->form();
