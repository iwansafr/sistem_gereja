<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Akta extends CI_Controller
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
		$user = $this->session->userdata(base_url('_logged_in'));
		$user_id = 0;
		$data = [];
		if(!empty($user['id']))
		{
			$data = $this->db->get_where('akta',['user_id'=>$user['id']])->result_array();
			$user_id = $user['id'];
		}
		$this->load->view('index',['data'=>$data,'user_id'=>$user_id]);
	}
}