<?php
class Contact extends CI_controller
{
	
	public function __construct() 
        { 
            parent::__construct();
			$this->load->helper('form');
            
        }
		function index()
		{
		
			$this->load->view('contact_view');
		}
		
	function send()
	{
	
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('name','Name', 'trim|required');
		$this->form_validation->set_rules('email','Email', 'trim|required|valid_email');
		
		//if validation does not rub
		if($this->form_validation->run()== FALSE)
		{
			$this->load->view('contact_view');
		}
		
		else
		{
			$name= $this->input->post('name');
			$email = $this->input->post('email');
			
			echo "Your email has been send"; die(); 
			$config = Array(
				'protocol'=>'smtp',
				'smtp_host' => 'ssl://smtp.googlemail.com',
				'smtp_port' => 465,
				'smtp_user' => 'vivianmondi@gmail.com',
				'smtp_pass' =>'kafifi123',
				'SMTPAuth '=> true,
				'mailtype' =>'html'
			);
			
			$this->load->library('email',$config);
			$this->email->set_newline("\r\n");
			
			$this->email->from('vivianmondi@gmail','Vivian Akinyi');
			$this->email->to('vivianomondi49@yahoo.com');
			$this->email->subject('This is an email test');
			$this->email->message('It is working');
			
			
			
			if($this->email->send())
			{
				echo 'Your email has been sent';
				//$this->load->view('blog_view');
		
			}
			else
			{
				show_error($this->email->print_debugger());
			
			
			}
			
		}
			

	}
}
	