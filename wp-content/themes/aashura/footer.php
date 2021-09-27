<!-- ======= Footer ======= -->
<footer id="footer">

	<div class="footer-newsletter">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<h4>Join Our Newsletter</h4>
					<p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
<?php $formLocation = get_template_directory_uri() . '/forms/newsletter.php';
				?>
				<form action="<?php echo $formLocation ?>" method="post">
					<form action="<?php echo $formLocation?>" method="post">
						<input type="email" name="newsletter_email" method="post" role="form" class="php-email-form"><input type="submit" value="Subscribe">
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 footer-contact">
					<h3>Arsha</h3>
					<p><?php echo esc_attr(get_option('location')) ?><br>
						<strong>Phone:</strong> <?php echo esc_attr(get_option('phone')) ?><br>
						<strong>Email:</strong> <?php echo esc_attr(get_option('email')) ?><br>
					</p>
				</div>

				<div class="col-lg-3 col-md-6 footer-links">
					<h4>Useful Links</h4>
					<?php echo wp_nav_menu([
						'menu'  => 'usefulLinks',
						'container' => false,
						'theme_location'  => 'usefulLinks',
						'add_li_class'    => 'bx bx-chevron-right',
					]); ?>
				</div>

				<div class="col-lg-3 col-md-6 footer-links">
					<h4>Our Services</h4>
					<?php $nav_menu_usefulLinks =  wp_nav_menu([
						'menu'  => 'ourServices',
						'container' => false,
						'theme_location'  => 'ourServices',
						'add_li_class'    => 'bx bx-chevron-right',
					]);
					if ($nav_menu_usefulLinks !==  null) {
						echo $nav_menu_usefulLinks;
					} else "add some menus to the Useful Links Navigation Menu";

					?>
				</div>
<?php
	$twitterLink = esc_attr(get_option('twitterLink'));
	$facebookLink = esc_attr(get_option('facebookLink'));
	$instagramLink = esc_attr(get_option('instagramLink'));
	$skypeLink = esc_attr(get_option('skypeLink'));
	$linkedinLink = esc_attr(get_option('linkedinLink'));
?>
				<div class="col-lg-3 col-md-6 footer-links">
					<h4>Our Social Networks</h4>
					<p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
					<div class="social-links mt-3">
						<a href="<?php echo $twitterLink?>" class="twitter"><i class="bx bxl-twitter"></i></a>
						<a href="<?php echo $facebookLink?>" class="facebook"><i class="bx bxl-facebook"></i></a>
						<a href="<?php echo $instagramLink?>" class="instagram"><i class="bx bxl-instagram"></i></a>
						<a href="<?php echo $skypeLink?>" class="google-plus"><i class="bx bxl-skype"></i></a>
						<a href="<?php echo $linkedinLink?>" class="linkedin"><i class="bx bxl-linkedin"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container footer-bottom clearfix">
		<div class="copyright">&copy; Copyright <strong><span>Arsha</span></strong>. <?php echo date('Y') ?> All Rights Reserved</div>
		<div class="credits">
			Designed by <a href="<?php echo get_site_url() ?>">BootstrapMade</a>
			Developed by <a href="https://github.com/deepyes02">Deepesh</a>
		</div>
	</div>
</footer>
<!-- End Footer -->
<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<?php wp_footer() ?>
</body>

</html>