<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ProsesUser extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('Master_model');
		// $this->load->view('header');
	}
	public function index(){
		$data['datadiri'] = $this->Master_model->view_all($where,'identitas_diri');
		$this->load->view('ProsesUser/prosesuser');
		$this->load->view('footer');
	}
	public function form2(){
		$id = $this->session->userdata('id');
		$where = array(
			'no_registrasi' => $id
		);
		$data['datadiri'] = $this->Master_model->view($where,'identitas_diri');
		$this->load->view('ProsesUser/FormPembayaranAwal',$data);
		$this->load->view('footer');
	}
	public function pembayaranform(){
		$id = $this->input->post('id');
		$nama = $this->input->post('nama');
		$hp =  $this->input->post('hp');
		$email = $this->input->post('email');
		$file = $_FILES['file']['name'];
		$ext1 = pathinfo($file,PATHINFO_EXTENSION);

		if($file==NULL){
			 // $this->session->set_flashdata('2','Input Bukti Pembayaran Tidak Boleh Kosong');
			 redirect('ProsesUser/form2');
		}else{
			$config['upload_path']   = './uploads/pembayaranform';
			$config['allowed_types'] = 'jpeg|jpg|png|pdf';
			$config['max_size']      = 0;

			$ext1 = $id.'_'.'pembayaranform.'.$ext1;
			$config['file_name'] = $ext1;
			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			$this->upload->do_upload('file');

			$data= array(
				'nama' => $nama,
				'no_hp' => $hp,
				'email' => $email,
				'fileform' => $ext1
			);
			$where = array(
				'no_registrasi' => $id
			);
			$this->Master_model->update_data($where,'identitas_diri',$data);
			// $this->session->set_flashdata('1','Data Pembayaran Form teah diterima . Harap menunggu Konfirmasi');
			redirect('ProsesUser');
		}
	}
	public function form3(){
		$this->load->view('ProsesUser/formlengkap');
		$this->load->view('footer');
	}
	public function form4(){
		$this->load->view('ProsesUser/formakhir');
		$this->load->view('footer');
	}
	public function pembayaranakhir(){
		$id = $this->input->post('id');
		$hp =  $this->input->post('hp');
		$file = $_FILES['file']['name'];
		$ext1 = pathinfo($file,PATHINFO_EXTENSION);

		if($file==NULL){
			 // $this->session->set_flashdata('2','Input Bukti Pembayaran Tidak Boleh Kosong');
			 redirect('ProsesUser');
		}else{
			$config['upload_path']   = './uploads/pembayaranakhir';
			$config['allowed_types'] = 'jpeg|jpg|png|pdf';
			$config['max_size']      = 0;

			$ext1 = $id.'_'.'pembayaranakhir.'.$ext1;
			$config['file_name'] = $ext1;
			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			$this->upload->do_upload('file');
			if ( ! $this->upload->do_upload('file')){
				$error = array('error' => $this->upload->display_errors());
			}else{
				$info = array('upload_data' => $this->upload->data());
				// $namafile= $this->upload->data('file_name');
			}

			$data= array(
				'no_hp' => $hp,
				'fileakhir' => $ext1
			);
			$where = array(
				'no_registrasi' => $id
			);
			$this->Master_model->update_data($where,'identitas_diri',$data);
			// $this->session->set_flashdata('1','Data Pembayaran Form teah diterima . Harap menunggu Konfirmasi');
			// redirect('ProsesUser');
		}

	}
}
