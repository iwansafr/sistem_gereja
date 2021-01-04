<?php
echo '<a class="pull-right btn btn-warning btn-sm" href="'.base_url('admin/kelompok/list').'">Data Kelompok</a>';
$form = new Zea();

$form->init('edit');
$form->setTable('jadwal');
$form->addInput('kelompok_id','dropdown');
$form->setLabel('kelompok_id','kelompok');
$form->removeNone('kelompok_id');
$form->tableOptions('kelompok_id','kelompok','id','nama');
$form->addInput('tgl','text');
$form->setType('tgl','date');
$form->addInput('jam','text');
$form->setType('jam','time');
$form->addInput('tempat','text');
$form->addInput('pelayan','text');
$form->setRequired('All');

$form->form();