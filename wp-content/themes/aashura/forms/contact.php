<?php
require_once('../../../../wp-load.php');
// Replace contact@example.com with your real receiving email address
if ($_POST['name'] && $_POST['email'] && $_POST['subject'] && $_POST['message']) {
	//insert the post programatically
	$post_id = wp_insert_post(array(
		'post_type'	=> 'contacts',
		'post_title' => $_POST['name'],
		'post_status'	=> 'publish',
		'comment_status'	=> 'closed',
		'ping_status'		=> 'closed'
	), false, true);
//update post meta
	if ($post_id) {
		//insert post meta
		update_post_meta($post_id, 'contactEmail', sanitize_text_field($_POST['email']), '');
		update_post_meta($post_id, 'contactSubject', sanitize_text_field($_POST['subject']), '');
		update_post_meta($post_id, 'contactMessage', sanitize_text_field($_POST['message']), '');
		

		//send email
		$admin_email = get_bloginfo('admin_email');
		$to = $admin_email;
		$subject = $_POST['subject'];
		$body = $_POST['message'];
		$headers = array('Content-Type: text/html; charset=UTF-8');
		$message = $_POST['message'] . "<br>" . "<p>This automated email was received because someone filled up the contact form in your website " . get_site_url() . "</p>";
		$message .= "<br><strong>The Admin</strong>";
		//send email
		wp_mail($to, $subject, $message, $headers);
	} else $message = "Sorry, your message couldn't be sent. Please try again";
	return $message;
}
