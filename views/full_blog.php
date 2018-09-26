<?php

	
	<?php foreach($query->result() as $row): ?>
		
		
			
			<h2><?php echo $row->title; ?></h2>
			<p><?php echo $row->body; ?></p>
			<p><?php echo $row->author;?></p>
			<p><?php echo $row->body;?></p>
			
			
		
		<?php endforeach; ?>






?>