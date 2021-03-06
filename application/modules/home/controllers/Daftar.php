<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Daftar extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->db->cache_off();
		$this->load->model('home_model');
		$this->load->library('esg');
		$this->load->library('ZEA/Zea');
		$this->status();
	}
	private function status()
	{
		if(!$this->db->field_exists('status','bps'))
		{
			$this->load->dbforge();
			$fields = array(
        'status' => array(
                'type' => 'TINYINT',
                'constraint' => '1',
                'default' => '0',
                'after' => 'id'
        ),
			);
			$this->dbforge->add_column('bps',$fields);
		}
	}
	public function index()
	{
		// testing
		$this->home_model->home();
		$this->load->view('index');
	}
	public function check_katekisasi($tipe = 0)
	{
		if(!empty($tipe))
		{
			return $this->db->get_where('bps',['tipe'=>$tipe])->row_array();
		}
	}
	public function nikah()
	{
		$last_id = $this->db->query('SELECT kode FROM bps WHERE DATE(created) = CURDATE() AND tipe = ? ORDER BY id DESC limit 1',2)->row_array();
		if(!empty($last_id)){
			$last_id = $last_id['kode'];
			$last_id = substr($last_id,8,9);
			$last_id = $last_id+1;
		}else{
			$last_id = 1;
		}
		$has_katekisasi = $this->check_katekisasi(42);
		$this->load->view('index',['last_id'=>$last_id,'type_id'=>2,'kode'=>'N','has_katekisasi'=>$has_katekisasi]);
	}
	public function baptis()
	{
		$last_id = $this->db->query('SELECT kode FROM bps WHERE DATE(created) = CURDATE() AND tipe = ? ORDER BY id DESC limit 1',1)->row_array();
		if(!empty($last_id)){
			$last_id = $last_id['kode'];
			$last_id = substr($last_id,8,9);
			$last_id = $last_id+1;
		}else{
			$last_id = 1;
		}	
		$has_katekisasi = $this->check_katekisasi(41);
		$this->load->view('index',['last_id'=>$last_id,'type_id'=>1,'kode'=>'B','has_katekisasi'=>$has_katekisasi]);
	}
	public function katekisasi()
	{
		$last_id = $this->db->query('SELECT kode FROM bps WHERE DATE(created) = CURDATE() AND tipe = ? ORDER BY id DESC limit 1',4)->row_array();
		if(!empty($last_id)){
			$last_id = $last_id['kode'];
			$last_id = substr($last_id,8,9);
			$last_id = $last_id+1;
		}else{
			$last_id = 1;
		}	
		$this->load->view('index',['last_id'=>$last_id,'type_id'=>4,'kode'=>'K']);
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
			case 'katekisasi':
				$type_id = 4;
				$kode = 'K';
				break;
			default:
				$type_id = 0;
				$kode = '';
				break;
		}
		return ['kode'=>$kode,'type_id'=>$type_id];
	}

}