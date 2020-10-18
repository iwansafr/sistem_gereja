<?php defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller
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

	public function list()
	{
		$this->esg->set_esg('extra_js',base_url('templates/AdminLTE/assets/jquery-slimscroll/jquery.slimscroll.min.js'));
		$this->load->view('index');
	}
	public function clear_list()
	{
		$this->load->view('user/list');
	}
	public function edit()
	{
		$this->load->view('index');
	}

	public function login_list()
	{
		$this->load->view('index');
	}

	public function clear_login_list()
	{
		$this->load->view('user/login_list');
	}

	public function login_failed()
	{
		$this->load->view('index');
	}

	public function clear_login_failed()
	{
		$this->load->view('user/login_failed');
	}

	public function role()
	{
		$this->load->view('index');
	}
	public function clear_role()
	{
		$this->load->view('user/role');
	}
	public function notrobot()
	{
		$this->load->view('user/notrobot');
	}

	public function jabatan()
	{
		$this->load->view('index');
	}
	public function clear_jabatan()
	{
		$this->load->view('user/jabatan');
	}

	public function jemaat_edit()
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

	public function clear_jemaat_list()
	{
		$this->load->view('user/jemaat_list');
	}
	public function jemaat_list()
	{
		$this->load->view('index');
	}

	public function pengurus_edit()
	{
		$this->load->view('index');
	}

	public function clear_pengurus_list()
	{
		$this->load->view('user/pengurus_list');
	}
	public function pengurus_list()
	{
		$this->load->view('index');
	}

	public function admin_edit()
	{
		$this->load->view('index');
	}

	public function clear_admin_list()
	{
		$this->load->view('user/admin_list');
	}
	public function admin_list()
	{
		$this->load->view('index');
	}

	public function operator_edit()
	{
		$this->load->view('index');
	}

	public function clear_operator_list()
	{
		$this->load->view('user/operator_list');
	}
	public function operator_list()
	{
		$this->load->view('index');
	}

}