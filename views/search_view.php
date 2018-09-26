<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Rights of Women</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<base href="<?php echo site_url(); ?>" />
<link href="<?php echo base_url();?>/assets/css/style.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

</head>
<body>
<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span><span>Home</span></span></a></li>
          <li><a href="http://localhost/Rights/index.php/topics"><span><span>Topics</span></span></a></li>
          <li><a href="http://localhost/Rights/index.php/FaQs"><span><span>FaQs</span></span></a></li>
          <li><a href="http://localhost/Rights/index.php/aboutUs"><span><span>About Us</span></span></a></li>
          <li><a href="http://localhost/Rights/index.php/blog"><span><span>Blog</span></span></a></li>
          <li><a href="http://localhost/Rights/index.php/contact"><span><span>Contact Us</span></span></a></li>
        </ul>
      </div>
	  <div class="clr"></div>
      <div class="logo"><h1><a href="index.html">Rights of Women<br /><small>Inform,Educate,Empower</small></a></h1></div>
      <div class="clr"></div>
      <img src="<?php echo base_url();?>/assets/css/images/logo.jpg" width="930" height="160" alt="image" />
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
		
		<?php if($query->num_rows() > 0): ?>
		
		<?php foreach($query->result() as $row): ?>
		
			<h2><?php echo $row->title; ?></h2>
			<p><?php echo $row->content; ?></p>
			<p><h3>Interpretation: </h3><?php echo $row->interpretation;?></p>
			
		
		<?php endforeach; ?>
		
		<?php else :?>
				<p>No results found.</p>
				
				
		<?php endif; ?>
		
		<p><?php echo anchor('topics','Back to Topics'); ?><p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="">
            <input name="button_search" src="<?php echo base_url();?>/assets/css/images/search_btn.gif" class="button_search" type="image" />
            <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" /></span>
            <div class="clr"></div>
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">Topics</a></li>
            <li><a href="#">Links</a></li>
			<li><a href="#">Advice Line</li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Contact us</a></li>
            
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sponsors</span></h2>
          <ul class="ex_menu">
            <li><a href="http://www.facebook.com" title="Facebook"><img src="<?php echo base_url();?>/assets/css/images/facebook.png">Face book</a></li>
            <li><a href="http://www.twitter.com" title="Twitter"><img src="<?php echo base_url();?>/assets/css/images/twitter.png">Twitter</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>About</span></h2>
        <img src="<?php echo base_url();?>/assets/css/images/white.jpg" width="56" height="56" alt="pix" />
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.  llorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum. <a href="#">Learn more...</a></p>
      </div>
      <div class="col c2">
        <h2><span>Lorem Ipsum</span></h2>
        <ul class="sb_menu">
          <li><a href="#">consequat molestie</a></li>
          <li><a href="#">sem justo</a></li>
          <li><a href="#">semper</a></li>
          <li><a href="#">magna sed purus</a></li>
          <li><a href="#">tincidunt</a></li>
        </ul>
      </div>
      <div class="col c3">
        <h2>Contact</h2>
        <p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat.</p>
        <p><strong>Phone:</strong> +1234567<br />
          <strong>Address:</strong> 123 TemplateAccess Rd<br />
          <strong>E-mail:</strong> <a href="mailto:info@example.com">info@example.com</a></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
       <p class="lf">&copy; Copyright Informative. Designed by <a href="http://www.uonbi.ac.ke">Vivian Akinyi</a></p>
      <ul class="fmenu">
			<li><a href="#">Home</a></li>
            <li><a href="#">Topics</a></li>
            <li><a href="#">Links</a></li>
			<li><a href="#">Advice Line</li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Contact us</a></li>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>

		