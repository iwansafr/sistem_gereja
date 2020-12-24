<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Member extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->db->cache_off();
		$this->load->model('home_model');
		$this->load->library('esg');
		$this->load->library('ZEA/Zea');
	}
	public function index()
	{
		// testing
		$this->home_model->home();
		$this->load->view('index');
	}

	public function daftar()
	{
		$last_id = 0;
		if(empty($_GET['id']))
		{
			$last_id = $this->db->query('SELECT username FROM user WHERE user_role_id = 3 AND DATE(created) = CURDATE() ORDER BY id DESC limit 1')->row_array();
			if(!empty($last_id)){
				$last_id = $last_id['username'];
				$last_id = substr($last_id,8,9);
				$last_id = $last_id+1;
			}else{
				$last_id = 1;
			}
		}
		$this->load->view('index',['last_id'=>$last_id]);
	}
}