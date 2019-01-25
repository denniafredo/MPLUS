<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('Master_model');
		

		// $this->load->model();
	}
	public function index(){
		$this->load->view('header');
		$data['books'] = $this->Master_model->view_all('book');
		$this->load->view('index',$data);
		$this->load->view('footer');
	}
	public function add_book(){
		$title = $this->input->post('title');
		$author = $this->input->post('author');
		$date_published = $this->input->post('date_published');
		$nop = $this->input->post('nop');
		$tob = $this->input->post('tob');

		$data = array(
			'id' => null,
			'title' => $title,
			'author' => $author,
			'date_published' => $date_published,
			'number_of_pages' => $nop,
			'type_of_book' => $tob
		);

		$data['books'] = $this->Master_model->insert('book',$data);
		$_SESSION["notice"]="1,Book Added";
		redirect('Master/index');

	}
	public function edit_book(){
		$id = $this->input->post('id');
		$title = $this->input->post('title');
		$author = $this->input->post('author');
		$date_published = $this->input->post('date_published');
		$nop = $this->input->post('nop');
		$tob = $this->input->post('tob');

		$data = array(
			'title' => $title,
			'author' => $author,
			'date_published' => $date_published,
			'number_of_pages' => $nop,
			'type_of_book' => $tob
		);
		$where = array(
			'id' => $id
		);
		$this->Master_model->update($where,'book',$data);
		$_SESSION["notice"]="1,Book Updated";
		redirect('Master/index');

	}
	public function getdata_book(){
		$id = $this->input->post('id');

		$where = array(
			'id' => $id
		);
		$data['books'] = $this->Master_model->view($where,'book');
		echo json_encode( $data['books']);
	}
	public function delete_book(){
		$id = $this->input->post('id');
		$where = array(
			'id' => $id
		);
		$data['books'] = $this->Master_model->delete($where,'book');
		
    	$_SESSION["notice"]="1,Book Deleted";
		redirect('Master/index');

	}

}
