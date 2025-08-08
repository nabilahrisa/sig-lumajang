<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_wisata');
		$this->load->model('m_json');
	}

	public function index()
	{
		$data = array(
			'title' => '',
			'isi'	=> 'v_home'
		);
		$this->load->view('layout/v_wrapper', $data, FALSE);
	}

	public function mapjson()
	{
		$data = array(
			'title' => 'Map JSON',
			'json' => $this->m_json->get_json(),
			'isi'	=> 'v_mapjson'
		);
		$this->load->view('layout/v_wrapper', $data, FALSE);
	}

	public function wisata()
	{
		$data = array(
			'title' => 'Daftar Wisata Alam',
			'wisata' => $this->m_wisata->get_all_data(),
			'isi'	=> 'v_wisata'
		);
		$this->load->view('layout/v_wrapper', $data, FALSE);
	}

	public function pemetaan()
	{
		$data = array(
			'title' => 'Pemetaan',
			'wisata' => $this->m_wisata->get_all_data(),
			'isi'	=> 'v_pemetaan'
		);
		$this->load->view('layout/v_wrapper', $data, FALSE);
	}

	public function detail($id_wisata)
	{
		$wisata = $this->m_wisata->detail($id_wisata);
		$data = array(
			'wisata' => $wisata,
			'title' =>  $wisata->nama_tempat,
			'isi'	=> 'v_detail'
		);
		$this->load->view('layout/v_wrapper', $data, FALSE);
	}

}
