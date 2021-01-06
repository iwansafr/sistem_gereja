<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Jadwal extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('home_model');
		$this->load->helper('content');
		$this->load->library('ZEA/Zea');
		$this->load->library('esg');
	}
	public function index()
	{
		$this->home_model->home();
		$data = new Zea();
		$data->init('roll');
		$data->setTable('jadwal');
		$data->search();
		$data->setNumbering(true);
		$data->addInput('id','plaintext');
		$data->setLabel('id','action');
		$data->setPlainText('id',[base_url('home/jadwal/detail/{id}')=>'Detail']);
		$data->addInput('user_id','dropdown');
		$data->tableOptions('user_id','user','id','name','user_role_id = 5');
		$data->setAttribute('user_id','disabled');
		$data->setLabel('user_id','pengurus');
		$data->addInput('kegiatan_id','dropdown');
		$data->tableOptions('kegiatan_id','kegiatan','id','nama');
		$data->setAttribute('kegiatan_id','disabled');
		$data->setLabel('kegiatan_id','kegiatan');
		$data->addInput('kelompok_id','dropdown');
		$data->tableOptions('kelompok_id','kelompok','id','nama');
		$data->setAttribute('kelompok_id','disabled');
		$data->setLabel('kelompok_id','kelompok');
		$data->addInput("tgl",'plaintext');
		$data->addInput("jam",'plaintext');

		$this->load->view('index',['data'=>$data,'kelompok'=>assoc($this->db->query('SELECT id,nama FROM kelompok')->result_array(),'id','nama')]);
	}

	public function detail($id = 0)
	{
		$data = $this->db->get_where('jadwal',['id'=>@intval($id)])->row_array();
		$this->load->view('index',['data'=>$data]);
	}
	public function list()
	{
		$this->load->view('index');
	}
	public function e()
	{
		$this->load->view('error');
	}
}