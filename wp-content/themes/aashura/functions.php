<?php

/**GLOBAL VARIABLES */
define ('ROOTDIRURL', get_template_directory());

/**
 * Functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package WordPress
 * @subpackage Aashura
 * @since Aashura 1.0
 */

 require_once(ROOTDIRURL . '/inc/navigation_design.public.php');

if ( ! function_exists( 'aasura_myfirsttheme_setup' ) ) {
  /**
  * Sets up theme defaults and registers support for various WordPress features
  *  It is important to set up these functions before the init hook so that none of these
  *  features are lost.
 * @since Aashura 1.0
  */
  function aasura_myfirsttheme_setup(){
    register_nav_menus( array (
      'primary'   => __('Primary Menu', 'aashura'),
    ));
  };
}
add_action('after_setup_theme', 'aasura_myfirsttheme_setup');
  //add additional classs to li
  function aasura_add_additional_li_classes($classes, $item, $args){
    if($args->theme_location == 'primary'){
      $classes[] = $args->add_li_class;
    }
    return $classes;
  }
  add_filter('nav_menu_css_class', 'aasura_add_additional_li_classes', 1, 3);


  // adding custom class to nav link items
  add_filter( 'nav_menu_link_attributes', 'aasura_add_class_href_nav_menu', 10, 3 );

function aasura_add_class_href_nav_menu( $atts, $item, $args ) {
    $class = 'nav-link scrollto'; // or something based on $item
    $atts['class'] = $class;
    return $atts;
}