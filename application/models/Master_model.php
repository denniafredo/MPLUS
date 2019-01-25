<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master_model extends CI_Model{

  public function __construct()
  {
    parent::__construct();
  }
  public function view_all($table){
  $this->db->select('*');
  $this->db->from($table);
  $query=$this->db->get();
    if($query->num_rows()>0){
         return $query->result();
    }else{
         return NULL;
    }
  }
  public function view($where,$table){
    $this->db->select('*');
    $this->db->from($table);
    $this->db->where($where);
    $query=$this->db->get();
    if($query->num_rows()>0){
         return $query->result();
    }else{
         return NULL;
    }
  }
  public function insert($table,$data){
      $this->db->insert($table,$data);
  }
  public function update($where,$table,$data){
      $this->db->where($where);
      $this->db->update($table,$data);
  }
  public function delete($where,$table){
      $this->db->where($where);
      $this->db->delete($table);
  }
}
