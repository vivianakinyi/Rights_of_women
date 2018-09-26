<html>
<head>

<title>Rights of Women</title>

<base href="<?php echo site_url(); ?>" />
<link href="<?php echo base_url();?>/assets/css/login.css" rel="stylesheet" type="text/css" media="screen" />

<head>

	<body>
		<div id="login_form">
			
			
			<?php
				echo form_open('login/validate_credentials');
				echo form_input('username','Username');
				echo form_password('password','Password');
				echo form_submit('submit','login');
				
				echo anchor('login/signup','Create Account');
				
				
			
			?>
		</div>
	</body>
</html>