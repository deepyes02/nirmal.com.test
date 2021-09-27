<section id="cliens" class="cliens section-bg">
	<div class="container">
		<?php
		$args = ['post_type' => 'clients', 'post_status' => 'publish', 'posts_per_page' => 6, 'order' => 'ASC'];
		$loop = new WP_Query($args);
		if ($loop->have_posts()) {
		?>
			<div class="row" data-aos="zoom-in">
				<?php
				while ($loop->have_posts()) {
					$loop->the_post();
				?>
					<div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
						<img src="<?php echo the_post_thumbnail_url()?>" class="img-fluid" alt="clients logo">
					</div>
				<?php
				}
				?>
			</div>
			<!--row ends-->
		<?php
		} else {
			echo "no clients";
		}
		?>


		<!-- <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
			<img src="<?php //echo get_template_directory_uri(); 
						?>/assets/img/clients/client-2.png" class="img-fluid" alt="">
		</div>
		<div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
			<img src="<?php //echo get_template_directory_uri(); 
						?>/assets/img/clients/client-3.png" class="img-fluid" alt="">
		</div>
		<div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
			<img src="<?php //echo get_template_directory_uri(); 
						?>/assets/img/clients/client-4.png" class="img-fluid" alt="">
		</div>
		<div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
			<img src="<?php //echo get_template_directory_uri(); 
						?>/assets/img/clients/client-5.png" class="img-fluid" alt="">
		</div>
		<div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
			<img src="<?php //echo get_template_directory_uri(); 
						?>/assets/img/clients/client-6.png" class="img-fluid" alt="">
		</div> -->
	</div>
	<!--main container ends-->
</section>