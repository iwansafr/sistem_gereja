<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Pendaftaran extends CI_Controller
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

	public function index()
	{
		$this->load->view('index');
	}

	private function type($type = '')
	{
		switch ($type) {
			case 'baptis':
				$type_id = 1;
				$kode = 'B';
				break;
			case 'pernikahan':
				$type_id = 2;
				$kode = 'N';
				break;
			case 'sidi':
				$type_id = 3;
				$kode = 'S';
				break;
			default:
				$type_id = 0;
				$kode = '';
				break;
		}
		return ['kode'=>$kode,'type_id'=>$type_id];
	}

	public function edit($type = '')
	{
		$last_id = 0;
		$data_type = $this->type($type);
		if(empty($_GET['id']))
		{
			$last_id = $this->db->query('SELECT kode FROM bps WHERE DATE(created) = CURDATE() AND tipe = ? ORDER BY id DESC limit 1',$data_type['type_id'])->row_array();
			if(!empty($last_id)){
				$last_id = $last_id['kode'];
				$last_id = substr($last_id,8,9);
				$last_id = $last_id+1;
			}else{
				$last_id = 1;
			}
		}
		$this->load->view('index',['last_id'=>$last_id,'type_id'=>$data_type['type_id'],'kode'=>$data_type['kode']]);
	}

	public function list($type = '')
	{
		$data_type = $this->type($type);
		$this->load->view('index',['type_id'=>$data_type['type_id'],'kode'=>$data_type['kode'],'type'=>$type]);
	}
	public function clear_list($type = '')
	{
		$this->load->view('admin/bps/list');
	}
}