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
		$data->addInput('id','hidden');
		$data->addInput('pelayan','plaintext');
		$data->addInput('kelompok_id','dropdown');
		$data->tableOptions('kelompok_id','kelompok','id','nama');
		$data->setAttribute('kelompok_id','disabled');
		$data->setLabel('kelompok_id','kelompok');
		$data->addInput("tgl",'plaintext');
		$data->addInput("jam",'plaintext');

		$this->load->view('index',['data'=>$data,'kelompok'=>assoc($this->db->query('SELECT id,nama FROM kelompok')->result_array(),'id','nama')]);
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