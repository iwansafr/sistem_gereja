<?php
echo '<a class="pull-right btn btn-warning btn-sm" href="'.base_url('admin/kelompok/list').'">Data Kelompok</a>';
$form = new Zea();

$form->init('roll');
$form->setNumbering(true);
$form->setTable('jadwal');
$form->addInput('id','plaintext');
$form->addInput('kelompok_id','dropdown');
$form->setAttribute('kelompok_id','disabled');
$form->setLabel('kelompok_id','kelompok');
$form->removeNone('kelompok_id');
$form->tableOptions('kelompok_id','kelompok','id','nama');
$form->addInput('tgl','plaintext');
$form->addInput('jam','plaintext');
$form->addInput('tempat','plaintext');
$form->addInput('user_id','dropdown');
$form->tableOptions('user_id','user','id','name','user_role_id = 5');
$form->setLabel('user_id','pelayan');
$form->setAttribute('user_id','disabled');
$form->setUrl('admin/jadwal/clear_list');
$form->setRequired('All');
$form->setDelete(true);
$form->setEdit(true);

$form->form();