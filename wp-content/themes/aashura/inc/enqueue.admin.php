<?php

add_action('admin_enqueue_scripts', function($hook){
		wp_register_style('aashura-admin-style', get_template_directory_uri() . '/assets/css/admin.style.css', array(), '1.0.0', 'all' );
		wp_enqueue_style('aashura-admin-style');
		wp_register_script('aashura-admin-script', get_template_directory_uri() . '/assets/js/adminScript.js', array('jquery'), '1.0.0', true);
		wp_enqueue_script('aashura-admin-script');
	}
, 11);