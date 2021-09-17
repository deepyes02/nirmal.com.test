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
//navigation menu creation with custom classes and elements.
require_once(get_template_directory() . '/inc/navigation_design.public.php');
//admin styles/scripts enqueue
require(get_template_directory() . '/inc/enqueue.admin.php');
//Enqueue -  Public JS/CSS libraries and scripts.
require_once(get_template_directory() . '/inc/enqueue.public.php');