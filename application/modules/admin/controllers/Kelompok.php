<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Kelompok extends CI_Controller
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

	public function tambah_member($kelompok_id)
	{
		$kelompok_exist = [];
		$user_ids = [];
		if(!empty($kelompok_id))
		{
			$kelompok_exist = $this->db->get_where('kelompok',['id'=>$kelompok_id])->row_array();
			$this->db->select('user_id');
			// $this->db->from('kelompok_user');
			$this->db->where('kelompok_id',$kelompok_id);
			$user_ids_tmp = $this->db->get('kelompok_user')->result_array();
			foreach ($user_ids_tmp as $key => $value) 
			{
				$user_ids[] = $value['user_id'];
			}
		}
		$this->load->view('index',['kelompok_exist'=>$kelompok_exist,'user_ids'=>$user_ids]);
	}

	public function edit()
	{
		$last_id = 0;
		if(empty($_GET['id']))
		{
			$last_id = $this->db->query('SELECT kode FROM kelompok WHERE DATE(created) = CURDATE() ORDER BY id DESC limit 1')->row_array();
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
		$this->load->view('admin/kelompok/list');
	}
}