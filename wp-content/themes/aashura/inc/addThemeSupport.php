<?php

/**
 * All settings related to custom theme support wordpress
 */
function add_custom_theme_support()
{
	$post_format_options = get_option('post_formats');
	// add_theme_support('post-formats', $post_format_options);
	add_theme_support('post-formats', ['quote', 'gallery']);
	add_theme_support('post-thumbnails');
	add_theme_support('widgets');
}
add_action('after_setup_theme', 'add_custom_theme_support');
