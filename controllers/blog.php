<?php

class Blog extends CI_controller
{
	
	public function __construct() 
        { 
            parent::__construct();
            $this->load->helper('url'); 
			$this->load->helper('form');
			/*$this->is_logged_in();*/
        }
	function index()
	{   
		$this->db->order_by("post_id", "desc"); 
		$data['query'] = $this->db->get('posts');
		
		$this->load->view('blog_view',$data);

	}
	function members_area()
	{
	
		$this->load->view('membership_area');
	
	}
	/*function is_logged_in()
	{
		$is_logged_in = $this->session->userdata('is_logged_in');
		
		if(isset($is_logged_in) || is_logged_in != true)
		{
			echo 'You do not have permission to acces this page. <a href= "../login">Login</a>';
			die();
		}
	
	}*/
	
	function post_insert()
	{
		$this->db->insert('posts',$_POST);
		redirect('blog');

	}
	/*function edit_post($data)
	{
		$this->db->where('comment_id',$this->uri->segment(3));
		$this->db->update('comments',$data);
	
	
	}*/
	function comments()
	{
	
		$this->db->where('post_id',$this->uri->segment(3));
		//$data['query'] = $this->db->get('posts');

		
		
		//$this->db->limit(10);    		/*To limit amount of rows retrieved*/
		$this->db->order_by("comment_id", "desc"); 
		$data['query'] = $this->db->get('comments');
		
		
		$this->load->view('comment_view',$data);

		
	}
	/*function count_for_post($post_id){
		$query = $this->db->query("SELECT COUNT( id ) FROM comments WHERE post_id = ".$post_id);
		$count_comments = $this->db->query("SELECT * FROM comments WHERE post_id = ".$post_id);
		echo $count_comments->num_rows();
		return $query; 
	}*/
	
	function comment_insert()
	{
		/*To secure blog against common SQL injections*/

		
		$this->db->insert('comments',$_POST);
		
		redirect('blog/comments/'.$_POST['post_id']); //redirect user to the post they commented on
	}
	function get_All(){
		$this->db->select('*');
	$this->db->from('blogs');
	$this->db->join('comments', 'comments.id = blogs.id');

	$query = $this->db->get();
	
	$this->load->view('full_view');
	
	}
	
	
}



?>