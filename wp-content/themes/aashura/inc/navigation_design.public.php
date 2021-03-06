<?php

/**
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 * @package WordPress
 * @subpackage Aashura
 * @since Aashura 1.0
 * @author deepesh
 */
// Important functions that can run before the init hook

/**
 * Navigation Menu Registration. Can add/edit menus as required.
 * @author deepesh
 * @since Aashura 1.0
 */
if (!function_exists('aasura_myfirsttheme_setup')) {
	add_action('after_setup_theme', 'aasura_myfirsttheme_setup');
	function aasura_myfirsttheme_setup()
	{
		//primary menu
		register_nav_menus(array(
			'primary'   => __('Primary Menu', 'aashura'),
			#add more menus here
			'usefulLinks'	=> __('Useful Links Menu', 'aashura'),
			'ourServices'	=> __('Our Services Menu', 'aashura'),
		));
	};
}
/**
 * Add custom classes to 'li' element of nav object
 * @author deepesh
 * @since Aashura 1.0
 * @return Array
 */
function aasura_add_additional_li_classes($classes, $item, $args)
{
	if ($args->theme_location == 'primary') {
		$classes[] = $args->add_li_class;
	}
	return $classes;
}
add_filter('nav_menu_css_class', 'aasura_add_additional_li_classes', 1, 3);
/**
 * Add custom classes to 'a' <anchor> element of nav object
 * e.g nav ul li a
 * @package Aashura
 * @return Array 
 */
function aasura_add_class_href_nav_menu($atts, $item, $args)
{
	if ($args->theme_location == 'primary') {
		$class = 'nav-link scrollto'; // or something based on $item
		$atts['class'] = $class;
		return $atts;
	}
	return $atts;
}
add_filter('nav_menu_link_attributes', 'aasura_add_class_href_nav_menu', 10, 3);
