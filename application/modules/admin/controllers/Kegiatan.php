<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Kegiatan extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->db->cache_off();
		$this->load->model('esg_model');
		$this->load->model('admin_model');
		$this->load->library('esg');
		$this->load->library('ZEA/zea');
		$this->esg_model->init();
	}

	public function edit()
	{
		$last_id = 0;
		if(empty($_GET['id']))
		{
			$last_id = $this->db->query('SELECT kode FROM kegiatan WHERE DATE(created) = CURDATE() ORDER BY id DESC limit 1')->row_array();
			if(!empty($last_id)){
				$last_id = $last_id['kode'];
				$last_id = substr($last_id,8,9);
				$last_id = $last_id+1;
			}else{
				$last_id = 1;
			}
		}
		$this->load->view('index',['last_id'=>$last_id]);
	}

	public function list()
	{
		$this->load->view('index');
	}
	public function clear_list()
	{
		$this->load->view('admin/kegiatan/list');
	}
}