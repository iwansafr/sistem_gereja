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
		if(!$this->db->field_exists('tgl_mulai','kegiatan'))
		{
			$this->load->dbforge();
			$fields = array(
        'tgl_mulai' => array(
                'type' => 'DATE',
                'after' => 'tgl'
        ),
			);
			$this->dbforge->add_column('kegiatan',$fields);
			$fields = array(
        'tgl_selesai' => array(
                'type' => 'DATE',
                'after' => 'tgl_mulai'
        ),
			);
			$this->dbforge->add_column('kegiatan',$fields);
		}
		if(!$this->db->field_exists('rekomendasi','kegiatan'))
		{
			$this->load->dbforge();
			$fields = array(
	      'rekomendasi' => array(
	              'type' => 'TEXT',
	              'after' => 'acc'
	      ),
			);
			$this->dbforge->add_column('kegiatan',$fields);
		}
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
		if(!$this->db->field_exists('tgl_mulai','kegiatan'))
		{
			$this->load->dbforge();
			$fields = array(
        'tgl_mulai' => array(
                'type' => 'DATE',
                'after' => 'tgl'
        ),
			);
			$this->dbforge->add_column('kegiatan',$fields);
			$fields = array(
        'tgl_selesai' => array(
                'type' => 'DATE',
                'after' => 'tgl_mulai'
        ),
			);
			$this->dbforge->add_column('kegiatan',$fields);
		}
		if(!$this->db->field_exists('acc','kegiatan'))
		{
			$this->load->dbforge();
			$fields = array(
        'acc' => array(
                'type' => 'tinyint',
                'after' => 'proposal',
                'default' => 0,
        ),
			);
			$this->dbforge->add_column('kegiatan',$fields);
		}
		$this->load->view('index');
	}
	public function clear_list()
	{
		$this->load->view('admin/kegiatan/list');
	}
}