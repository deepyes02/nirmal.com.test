<?php
$args = ['post_type' => 'pricing', 'post_status' => 'publish', 'posts_per_page' => 3, 'order' => 'ASC'];
$loop = new WP_Query($args);
if ($loop->have_posts()) {
?>
	<section id="pricing" class="pricing">
		<div class="container" data-aos="fade-up">

			<div class="section-title">
				<h2>Pricing</h2>
				<p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
					consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
					in iste officiis commodi quidem hic quas.</p>
			</div>

			<div class="row">
				<?php
				while ($loop->have_posts()) {
					$loop->the_post();
					$pricing = get_post_meta($post->ID, 'pricing', true);
					$feature1 = get_post_meta($post->ID, 'feature1', true);
					$feature1_val = get_post_meta($post->ID, 'feature1_val', true);
					$feature2 = get_post_meta($post->ID, 'feature2', true);
					$feature2_val = get_post_meta($post->ID, 'feature2_val', true);
					$feature3 = get_post_meta($post->ID, 'feature3', true);
					$feature3_val = get_post_meta($post->ID, 'feature3_val', true);
					$feature4 = get_post_meta($post->ID, 'feature4', true);
					$feature4_val = get_post_meta($post->ID, 'feature4_val', true);
					$feature5 = get_post_meta($post->ID, 'feature5', true);
					$feature5_val = get_post_meta($post->ID, 'feature5_val', true);
				?>
					<div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
						<div class="box">
							<h3><?php echo the_title() ?></h3>
							<h4><sup>$</sup><?php echo $pricing ?><span>per month</span></h4>
							<ul>
								<li class="<?php echo $feature1_val == 'available' ? '' : 'na' ?>"><i class="<?php echo $feature1_val == 'available' ? 'bx bx-check' : 'bx bx-x' ?>"></i> <span><?php echo $feature1 ?></span></li>
								<li class="<?php echo $feature2_val == 'available' ? '' : 'na' ?>"><i class="<?php echo $feature2_val == 'available' ? 'bx bx-check' : 'bx bx-x' ?>"></i> <span><?php echo $feature2 ?></span></li>
								<li class="<?php echo $feature3_val == 'available' ? '' : 'na' ?>"><i class="<?php echo $feature3_val == 'available' ? 'bx bx-check' : 'bx bx-x' ?>"></i> <span><?php echo $feature3 ?></span></li>
								<li class="<?php echo $feature4_val == 'available' ? '' : 'na' ?>"><i class="<?php echo $feature4_val == 'available' ? 'bx bx-check' : 'bx bx-x' ?>"></i> <span><?php echo $feature4 ?></span></li>
								<li class="<?php echo $feature5_val == 'available' ? '' : 'na' ?>"><i class="<?php echo $feature5_val == 'available' ? 'bx bx-check' : 'bx bx-x' ?>"></i> <span><?php echo $feature5 ?></span></li>
							</ul>
							<a href="<?php echo the_permalink() ?>" class="buy-btn">Get Started</a>
						</div>
					</div>
				<?php
				}
				?>
			</div>

		</div>
	</section>
<?php
}
?>