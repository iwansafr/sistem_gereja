<?php

if(!empty($kelompok_exist))
{
	?>
	<a href="" class="btn btn-sm btn-default"><i class="fa fa-refresh"></i> Refresh</a>
	<a href="<?php echo base_url('admin/kelompok/list');?>" class="btn btn-sm btn-default"><i class="fa fa-users"></i> Data Kelompok</a>
	<?php
	$edit = new zea();
	$edit->setHeading('Jemaat '.$kelompok_exist['nama']);
	$edit->init('edit');
	$edit->setTable('kelompok_user');
	$edit->addInput('kelompok_id','static');
	$edit->setValue('kelompok_id',$kelompok_exist['id']);
	$edit->addInput('user_id','dropdown');
	if(!empty($user_ids))
	{
		$edit->tableOptions('user_id','user','id','name','user_role_id = 3 AND id NOT IN('.implode(',',$user_ids).')');
	}else{
		$edit->tableOptions('user_id','user','id','name','user_role_id = 3');
	}
	$edit->setLabel('user_id','Jemaat');
	$edit->setRequired('All');
	$edit->form();

	$form = new zea();
	$form->setHeading('Jemaat '.$kelompok_exist['nama']);
	$form->init('roll');
	$form->addInput('id','hidden');
	$form->setNumbering(true);
	$form->setTable('kelompok_user');
	$form->addInput('user_id','dropdown');
	$form->tableOptions('user_id','user','id','name','user_role_id = 3');
	$form->setAttribute('user_id','disabled');
	$form->setLabel('user_id','Jemaat');
	$form->setDelete(true);
	$form->form();
}else{
	msg('Kelompok tidak diketahui','danger');
}