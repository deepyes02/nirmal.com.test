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
//primary functions (--before init)
//GLOBAL CONSTANTS - will I need this???
require_once( get_template_directory() . '/inc/globar-var.admin.php');
//Enable Theme Support and default features
require_once(get_template_directory() . '/inc/addThemeSupport.php');


//Enqueue Public libraries and scripts
require_once(get_template_directory() . '/inc/enqueue.public.php');
//Enqueue Admin Scripts & Libraries
require(get_template_directory() . '/inc/enqueue.admin.php');

// Objects and Classes - custom post type functions
require_once(get_template_directory() . '/inc/customPostTypes/statements.php');
require_once(get_template_directory() . '/inc/customPostTypes/services.php');
require_once(get_template_directory() . '/inc/customPostTypes/portfolio.php');
require_once(get_template_directory() . '/inc/customPostTypes/team.php');
require_once(get_template_directory() . '/inc/customPostTypes/faqs.php');
require_once(get_template_directory() . '/inc/customPostTypes/skills.php');
require_once(get_template_directory() . '/inc/customPostTypes/pricing.php');

// meta box functions
require_once(get_template_directory() . '/inc/metaboxes/services.php');
require_once(get_template_directory() . '/inc/metaboxes/team.php');
require_once(get_template_directory() . '/inc/metaboxes/skills.php');
require_once(get_template_directory() . '/inc/metaboxes/pricing.php');

// Backend and Design
require(get_template_directory() . '/inc/function.admin.php');
require_once(get_template_directory() . '/inc/navigation_design.public.php');


## Repo: https://github.com/deepyes02/nirmal.com.test