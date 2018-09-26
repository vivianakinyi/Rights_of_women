<?php


class Links extends CI_controller
{
	function index()
	{
		$data['query'] = $this->db->get('sites');
		
		$this->load->view('links_view',$data);
	
	}




}




















?>