<?php
/**
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 * @package WordPress
 * @subpackage Aashura
 * @since Aashura 1.0
 */

 // Important functions that can run before the init hook

 /**
  * Navigation Menu Registration. Can add/edit menus as required.
  * @author deepesh
   * @since Aashura 1.0
  */
if ( ! function_exists( 'aasura_myfirsttheme_setup' ) ) {
  add_action('after_setup_theme', 'aasura_myfirsttheme_setup');
  function aasura_myfirsttheme_setup(){
    register_nav_menus( array (
      'primary'   => __('Primary Menu', 'aashura'),
    ));
  };
}

/**
 * Add custom classes to 'li' element of nav object
 * @author deepesh
 * @since Aashura 1.0
 */
add_filter('nav_menu_css_class', 'aasura_add_additional_li_classes', 1, 3);
function aasura_add_additional_li_classes($classes, $item, $args){
  if($args->theme_location == 'primary'){
    $classes[] = $args->add_li_class;
  }
  return $classes;
}

/**
 * Add class to href nav menus, i.e a tags, or anchor tags
 * @package Aashura
 * @return Array 
 */
function aasura_add_class_href_nav_menu( $atts, $item, $args ) {
  $class = 'nav-link scrollto'; // or something based on $item
  $atts['class'] = $class;
  return $atts;
}
add_filter( 'nav_menu_link_attributes', 'aasura_add_class_href_nav_menu', 10, 3 );