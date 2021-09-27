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
	if ($post_id) {
		//insert post meta
update_post_meta($post_id, 'contactEmail', sanitize_text_field($_POST['email']), '');
update_post_meta($post_id, 'contactSubject', sanitize_text_field($_POST['subject']), '');
update_post_meta($post_id, 'contactMessage', sanitize_text_field($_POST['message']), '');
		$message = "Great your message has been sent.";
	} else $message = "Sorry, your message couldn't be sent. Please try again";
	return $message;
}
