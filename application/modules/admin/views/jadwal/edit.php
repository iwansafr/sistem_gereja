<?php
echo '<a class="pull-right btn btn-warning btn-sm" href="'.base_url('admin/kelompok/list').'">Data Kelompok</a>';
echo '<a class="pull-right btn btn-primary btn-sm" href="'.base_url('admin/kegiatan/list').'">Data Kegiatan</a>';
$form = new Zea();

$form->init('edit');
$form->setId(@intval($_GET['id']));
$form->setTable('jadwal');
$form->addInput('tipe','dropdown');
$form->setOptions('tipe',['1'=>'Kegiatan Ibadah','2'=>'Kegiatan Umum']);
$form->setLabel('tipe','Jenis Jadwal');
$form->addInput('kegiatan_id','dropdown');
$form->setLabel('kegiatan_id','Kegiatan');
$form->removeNone('kegiatan_id');
$form->tableOptions('kegiatan_id','kegiatan','id','nama','acc = 1');
$form->addInput('kelompok_id','dropdown');
$form->setLabel('kelompok_id','kelompok');
$form->removeNone('kelompok_id');
$form->tableOptions('kelompok_id','kelompok','id','nama');
$form->addInput('tgl','text');
$form->setType('tgl','date');
$form->addInput('jam','text');
$form->setType('jam','time');
$form->addInput('tempat','text');
$form->addInput('user_id','dropdown');
$form->setLabel('user_id','pengurus');
$form->removeNone('user_id');
$form->tableOptions('user_id','user','id','name','user_role_id = 5');
$form->setRequired('All');

$form->form();