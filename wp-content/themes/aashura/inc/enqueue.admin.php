<?php

add_action('admin_enqueue_scripts', function($hook){
		wp_register_script('aashura-admin-script', get_template_directory_uri() . '/assets/js/adminScript.js', array('jquery'), '1.0.0', true);
		wp_enqueue_script('aashura-admin-script');
	}
, 11);