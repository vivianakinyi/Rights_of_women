<?php
class Login extends CI_controller
{

	function index()
	{
		
		$this->load->view('login_form');

	}
	function validate_credentials()
	{
		$this->load->model('registered_users_model');
		$query = $this->registered_users_model->validate();
		
		if($query) //if users credentials validate
		{
			$data = array(
				'username' => $this->input->post('username'),
				'is_logged_in' => true
			
			);
			
			$this->session->set_userdata($data);
			
			redirect('blog/members_area');
			
		}
		else //if not logged in correctly
		{
			$this->index(); //load the login form again
			echo 'You input wrong password or username try again';
		}
		
		
		
	}
	
	function signup()
	{
		$this->load->view('signup_form');

	}
	function create_account()
	{
		$this->load->library('form_validation');
		
		//validation rules
		$this->form_validation->set_rules('first_name','First Name','trim|required');
		$this->form_validation->set_rules('last_name','Last Name','trim|required');
		$this->form_validation->set_rules('email_address','Email Address','trim|required|valid_email');
	
		$this->form_validation->set_rules('username','Username','trim|required|min_length[4]');
		$this->form_validation->set_rules('password','Password','trim|required|min_length[4]|max_length[32]');
		$this->form_validation->set_rules('password2','Password Confirmation','trim|required|matches[password]');

		if($this->form_validation->run() == FALSE)
		{
			$this->signup();
		}
		else
		{
			$this->load->model('Registered_users_model');
			if($query =$this->Registered_users_model->create_member())
			{
					$this->load->view('signup_successful');
			
			}
			else  //if  insert data not successfull load signup form again
			{
				$this->load->view(signup_form);
			}
		
		}

	}





}






?>