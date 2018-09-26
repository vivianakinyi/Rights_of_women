<?php 

class Topics extends CI_controller
{
	public function __construct() 
		{ 
			parent::__construct();
			$this->load->helper('text');
		}
		
	function index()
	{
		//$data['query'] = $this->db->get('');
			
		$this->load->view('topics_view');

	}
	function health_rights()
	{
			$data['query'] = $this->db->get('health_rights');
			
			$this->load->view('health_rights_view',$data);

	}
	function social_rights()
	{
			$data['query'] = $this->db->get('social_rights');
			
			$this->load->view('social_rights_view',$data);

	}
	function economic_rights()
	{
			$data['query'] = $this->db->get('economic_rights');
			
			$this->load->view('economic_rights_view',$data);

	}
	function political_rights()
	{
			$data['query'] = $this->db->get('political_rights');
			
			$this->load->view('political_rights_view',$data);

	}
	function search()
	{
		$match = $this->input->post('search');
		$this->db->like('title',$match);
		$this->db->or_like('content',$match);
		$this->db->or_like('interpretation',$match);
		
		$data['query'] = $this->db->get('health_rights');
		//return $query->result();
		
		$this->load->view('search_view',$data);
	}
	/*function search()
	{
		$match = $this->input->post('search');
		$Linkearray = array('health_rights.title' => $match,'social_rights.title' => $match);
		$Linkearray2 = array('health_rights.content' => $match,'social_rights.content' => $match);
		$this->db->or_like($Linkearray);
		$this->db->or_like($Linkearray2);
		array_merge($Linkearray,$Linkearray2);
		$this->db->from('health_rights,social_rights');
		$data['query'] = $this->db->get();
		
		$this->load->view('search_view',$data);

		/*foreach ($query->result_array() as $row):
		echo $row['title'];
		endforeach;
	
	}*/
	/*function search()
	{
	
		 $this->db->like('name', $search); // users table
		$this->db->or_like('company', $search); // companies table
		$this->db->or_like('company_adress', $search); // companies table
		$this->db->or_like('interests', $search); // interests table        
		$this->db->from('users u');
		$this->db->join('companies c', 'c.user_id = u.id', 'left');
		$this->db->join('interests i', 'i.user_id = u.id', 'left');
		$this->db->group_by('u.id'); // added a group_by
		$q=$this->db->get();  
	
	
	}*/



}
?>