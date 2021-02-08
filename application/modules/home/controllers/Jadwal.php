<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Jadwal extends CI_Controller
{
	private $data;
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
		$this->data = new Zea();
		$this->data->init('roll');
		$this->data->setTable('jadwal');
		$this->data->search();
		$this->data->setNumbering(true);
		$this->data->addInput('id','plaintext');
		$this->data->setLabel('id','action');
		$this->data->setPlainText('id',[base_url('home/jadwal/detail/{id}')=>'Detail']);
		$this->data->addInput('user_id','dropdown');
		$this->data->tableOptions('user_id','user','id','name','user_role_id = 5');
		$this->data->setAttribute('user_id','disabled');
		$this->data->setLabel('user_id','pengurus');
		$this->data->addInput('kegiatan_id','dropdown');
		$this->data->tableOptions('kegiatan_id','kegiatan','id','nama');
		$this->data->setAttribute('kegiatan_id','disabled');
		$this->data->setLabel('kegiatan_id','kegiatan');
		$this->data->addInput('kelompok_id','dropdown');
		$this->data->tableOptions('kelompok_id','kelompok','id','nama');
		$this->data->setAttribute('kelompok_id','disabled');
		$this->data->setLabel('kelompok_id','kelompok');
		$this->data->addInput("tgl",'plaintext');
		$this->data->addInput("jam",'plaintext');

		$this->load->view('index',['data'=>$this->data,'kelompok'=>assoc($this->db->query('SELECT id,nama FROM kelompok')->result_array(),'id','nama')]);
	}
	public function getJadwal($tipe = 0)
	{
		$this->data = new Zea();
		$this->data->init('roll');
		$this->data->setTable('jadwal');

		if($tipe > 0 && $tipe < 3){
			$this->data->setWhere(' tipe = '.$tipe);
		
		}

		$this->data->search();
		$this->data->setNumbering(true);
		$this->data->addInput('id','plaintext');
		$this->data->setLabel('id','action');
		$this->data->setPlainText('id',[base_url('home/jadwal/detail/{id}')=>'Detail']);
		$this->data->addInput('user_id','dropdown');
		$this->data->tableOptions('user_id','user','id','name','user_role_id = 5');
		$this->data->setAttribute('user_id','disabled');
		$this->data->setLabel('user_id','pengurus');
		$this->data->addInput('kegiatan_id','dropdown');
		$this->data->tableOptions('kegiatan_id','kegiatan','id','nama');
		$this->data->setAttribute('kegiatan_id','disabled');
		$this->data->setLabel('kegiatan_id','kegiatan');
		$this->data->addInput('kelompok_id','dropdown');
		$this->data->tableOptions('kelompok_id','kelompok','id','nama');
		$this->data->setAttribute('kelompok_id','disabled');
		$this->data->setLabel('kelompok_id','kelompok');
		$this->data->addInput("tgl",'plaintext');
		$this->data->addInput("jam",'plaintext');
		// return $data;
	}
	public function umum()
	{
		$this->getJadwal(2);
		$this->load->view('index',['data'=>$this->data,'kelompok'=>assoc($this->db->query('SELECT id,nama FROM kelompok')->result_array(),'id','nama')]);
	}
	public function ibadah()
	{
		$this->getJadwal(1);
		$this->load->view('index',['data'=>$this->data,'kelompok'=>assoc($this->db->query('SELECT id,nama FROM kelompok')->result_array(),'id','nama')]);
	}

	public function detail($id = 0)
	{
		$data = $this->db->get_where('jadwal',['id'=>@intval($id)])->row_array();
		if(!empty($data))
		{
			$data['kelompok'] = $this->db->get_where('kelompok',['id'=>$data['kelompok_id']])->row_array();
			$data['kegiatan'] = $this->db->get_where('kegiatan',['id'=>$data['kegiatan_id']])->row_array();
			$data['pengurus'] = $this->db->get_where('user',['id'=>$data['user_id']])->row_array();
		}
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