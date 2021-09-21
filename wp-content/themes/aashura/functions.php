<?php
/**
 * Wordpress Development Tools
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package AashuraWordpressTheme
 * @subpackage aashura
 * @since Aashura 1.0
 * @author deepesh dhakal
 */
//Very first functions (--even before init)
//Declare the GLOBAL CONSTANTS
require_once( get_template_directory() . '/inc/globar-var.admin.php');
//Wordpress Theme Support - Enabling default features
require_once(get_template_directory() . '/inc/addThemeSupport.php');

// Custom Post Type
require_once(get_template_directory() . '/inc/customPostTypes/statements.php');
require_once(get_template_directory() . '/inc/customPostTypes/services.php');

// meta box for services page
require_once(get_template_directory() . '/inc/metaboxes/services.php');

// ADMIN FUNCTIONS TO ADD CUSTOM OPTIONS PAGE AND SETTING API
require(get_template_directory() . '/inc/function.admin.php');
require_once(get_template_directory() . '/inc/navigation_design.public.php');
//admin styles/scripts enqueue
require(get_template_directory() . '/inc/enqueue.admin.php');
//Enqueue -  Public JS/CSS libraries and scripts.
require_once(get_template_directory() . '/inc/enqueue.public.php');