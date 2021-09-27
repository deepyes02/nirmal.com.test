<section id="contact" class="contact">
	<div class="container" data-aos="fade-up">
		<div class="section-title">
			<h2>Contact</h2>
			<p>Contact us anytime Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
		</div>
		<?php
		$location = esc_attr(get_option('location'));
		$email = esc_attr(get_option('email'));
		$phone = esc_attr(get_option('phone'));
	$googleMapEmbed = get_option('googleMapEmbed');

		?>
		<div class="row">
			<div class="col-lg-5 d-flex align-items-stretch">
				<div class="info">
					<div class="address">
						<i class="bi bi-geo-alt"></i>
						<h4>Location:</h4>
						<p><?php echo $location ?></p>
					</div>

					<div class="email">
						<i class="bi bi-envelope"></i>
						<h4>Email:</h4>
						<p><?php echo $email ?></p>
					</div>

					<div class="phone">
						<i class="bi bi-phone"></i>
						<h4>Call:</h4>
						<p><?php echo $phone ?></p>
					</div>
					<?php echo $googleMapEmbed?>
				</div>

			</div>
			<div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
				<?php $formLocation = get_template_directory_uri() . '/forms/contact.php';
				?>
				<form action="<?php echo $formLocation ?>" method="post" role="form" class="php-email-form">
					<div class="row">
						<div class="form-group col-md-6">
							<label for="name">Your Name</label>
							<input type="text" name="name" class="form-control" id="name" required>
						</div>
						<div class="form-group col-md-6">
							<label for="email">Your Email</label>
							<input type="email" class="form-control" name="email" id="email" required>
						</div>
					</div>
					<div class="form-group">
						<label for="name">Subject</label>
						<input type="text" class="form-control" name="subject" id="subject" required>
					</div>
					<div class="form-group">
						<label for="name">Message</label>
						<textarea class="form-control" name="message" rows="10" required></textarea>
					</div>
					<div class="my-3">
						<div class="loading">Loading</div>
						<div class="error-message"><?php echo $message?></div>
						<div class="sent-message"><?php echo $message?></div>
					</div>
					<div class="text-center"><button type="submit">Send Message</button></div>
				</form>
			</div>

		</div>

	</div>
</section>