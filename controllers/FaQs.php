<?php
class FaQs extends CI_controller
{
	
	public function __construct() 
        { 
            parent::__construct();
            
        }
	function index()
	{
		$data['query'] = $this->db->get('faqs');
		$this->load->view('FaQs_view',$data);

	}
	
}
	
?>