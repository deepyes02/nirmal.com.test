<?php

require_once('../../../../wp-load.php');
if ($_POST['newsletter_email']) {
	//insert the post programatically
	$post_id = wp_insert_post(array(
		'post_type'	=> 'newsletters',
		'post_title' => $_POST['newsletter_email'],
		'post_status'	=> 'publish',
		'comment_status'	=> 'closed',
		'ping_status'		=> 'closed'
	), false, true);
	if ($post_id) {
		//send email
		$admin_email = get_bloginfo('admin_email');
		$to = $admin_email;
		$subject = "Someone subscribed to your newsletter";
		$headers = array('Content-Type: text/html; charset=UTF-8');
		$message = $subject . "<br>" . "<p>This automated email was received because someone filled up the subscription form in your website " . get_site_url() . "</p>";
		$message .= "<br><strong>The Admin</strong>";
		//send email
		$mail = wp_mail($to, $subject, $message, $headers);
	}
$subscription_render =  'Subscription successful<br>';
$homePageUrl = get_site_url();
$subscription_render .= 'go back to <a href="'. $homePageUrl .'">homepage</a>';
echo $subscription_render;
wp_redirect(site_url());
}
