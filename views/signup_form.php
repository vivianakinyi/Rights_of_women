<html>
	<head>
	
		<base href="<?php echo site_url(); ?>" />
		<link href="<?php echo base_url();?>/assets/css/login.css" rel="stylesheet" type="text/css" media="screen" />

	
	</head>
	<body>
	<h1>Create an account!</h1>
		 <fieldset>
			<legend>Personal Information</legend>
				<?php 
					echo form_open('login/create_account');
					echo form_input('first_name',set_value('first_name','First Name'));
					echo form_input('last_name',set_value('last_name','Last Name'));
					echo form_input('email_address',set_value('email_address','Email Address'));
				?>
		</fieldset>

		<fieldset>
			<legend>Login Information</legend>
			<?php 
				echo form_input('username',set_value('username','Username'));
				echo form_input('password',set_value('password','Password'));
				echo form_input('password2',set_value('password2','Password Confirm'));
			
				echo  form_submit('submit','Create Account');
			?>
			
			<?php echo validation_errors('<p class="error">'); ?>
		</fieldset>

	</body>
</html>