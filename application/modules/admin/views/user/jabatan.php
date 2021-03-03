<?php defined('BASEPATH') OR exit('No direct script access allowed');
if(is_root() || is_admin())
{
	$this->zea->init('edit');
	$id = @intval($_GET['id']);
	if(!empty($id))
	{
		$this->zea->setId($id);
	}
	$this->zea->setHeading('Jabatan');
	$this->zea->setTable('user_jabatan');
	$this->zea->addInput('title','text');
	$this->zea->setRequired('All');
	echo '<div class="row">';
	echo '<div class="col-md-3">';
	?>
	<a href="<?php echo base_url('admin/user/jabatan/') ?>"><button class="pull-right btn btn-default"><span><i class="fa fa-plus-circle"></i></span> tambah jabatan</button></a>
	<?php
	$this->zea->form();
	echo '</div>';

	$form = new zea();
	$form->init('roll');
	$form->search();
	$form->setHeading('jabatan List');
	$form->setField(array('id','title'));
	$form->setTable('user_jabatan');
	$form->addInput('id','static');
	$form->setNumbering(TRUE);
	$form->addInput('title','plaintext');
	// $form->addInput('level','hidden');
	$form->setDelete(TRUE);
	$form->setEdit(TRUE);
	$form->setEditLink(base_url('admin/user/jabatan/?id='));
	$form->setUrl('admin/user/clear_jabatan');
	echo '<div class="col-md-9">';
	$form->setHIde(array('id'));
	$form->form();
	echo '</div>';
	echo '</div>';
}else{
	msg('Forbiden and dangerous menu', 'danger');
}