<?php

$form = new Zea();

$form->init('roll');
$form->setTable('user');
$form->setWhere(' user_role_id = 5');

$form->search();
$form->setNumbering(true);
$form->addInput('id','hidden');

$form->addInput('username','plaintext');
$form->setLabel('username','kode');
$form->addInput('jabatan','dropdown');
$form->tableOptions('jabatan','user_jabatan','id','title');

$form->addInput('name','plaintext');
$form->setLabel('name','nama');

$form->addInput('phone','plaintext');
$form->setLabel('phone','Nomor HP');

$form->setEdit(true);
$form->setDelete(true);
$form->setEditLink('pengurus_edit?id=','id');

$form->setUrl('admin/user/clear_pengurus_list');
$form->form();
