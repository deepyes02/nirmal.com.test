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

/**GLOBAL VARIABLES*/
define ('ROOTDIR', get_template_directory());
define ('ROOTDIRURL', get_template_directory_uri());

//Very first functions (--even before init) that either enable theme support, and/or mutate elements
require_once(ROOTDIR . '/inc/navigation_design.public.php');

// Enqueue Public JS/CSS libraries and scripts.
require_once(ROOTDIR . '/inc/enqueue_scripts.public.php');

