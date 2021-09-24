<?php

function aashura_add_admin_page()
{
  //main menu page
  add_menu_page('Aashura Options', 'Aashura Settings', 'manage_options', 'aashura_general', 'aashura_landing_page_cb', 'dashicons-star-half', 1);
  // because wordpress creates first submenu page automatically with the same title as the main page, we need to write this line to avoid that
  add_submenu_page('aashura_general', 'Aashura General', 'General', 'manage_options', 'aashura_general', 'aashura_landing_page_cb', 111);
  //submenu contact settings
  add_submenu_page( 'aashura_general', 'Contact Settings', 'Contact & Map', 'manage_options', 'aashura_contact', 'aashura_contact_page_cb', 112 );
  add_action('admin_init', 'aashura_custom_settings');
}
/**
 * Register a setting name along with a group name where it belongs
 * add section for the setting
 * add field for the setting
 */
function aashura_custom_settings()
{
  //settings group personal
  register_setting('aasura_settings_personal', 'hero_title');
  register_setting('aasura_settings_personal', 'hero_subtitle');
  register_setting('aasura_settings_personal', 'hero_get_started_link');
  register_setting('aasura_settings_personal', 'hero_youtube_link');
  //settings section
  add_settings_section('aashura_settings_section_landing', 'Landing Page', 'aashura_sidebar_options', 'aashura_general');
  //settings field
  add_settings_field('sunset_landing_title', 'Landing Title', 'aashura_settings_field_hero', 'aashura_general', 'aashura_settings_section_landing');

  //settings group contact
  register_setting( 'aashura_settings_contact', 'location');
  register_setting( 'aashura_settings_contact', 'email');
  register_setting( 'aashura_settings_contact', 'phone');

  add_settings_section( 'aashura_settings_section_contact', 'Contact Page', 'aashura_contact_options', 'aashura_contact' );
  add_settings_field( 'aashura_contact_page', 'Enter Contact Details', 'aashura_settings_field_contact', 'aashura_contact', 'aashura_settings_section_contact' );
}

//landing page callback
function aashura_landing_page_cb()
{
  require_once(get_template_directory() . '/inc/templates/aashura.admin.general.php');
}
//contact page callback
function aashura_contact_page_cb(){
  require_once(get_template_directory() . '/inc/templates/aashura.admin.contact.php');
}

function aashura_settings_field_hero()
{
  $hero_title = esc_attr(get_option('hero_title'));
  $hero_subtitle = esc_attr(get_option('hero_subtitle'));
  $hero_get_started_link = esc_attr(get_option('hero_get_started_link'));
  $hero_youtube_link = esc_attr(get_option('hero_youtube_link'));
  ?>
  <p class="description">Type in your title</p>
  <div>
    <input type="text" name="hero_title" value="<?php echo $hero_title?>" maxlength="50">
  </div>
  <p class="description">Type in your subtitle</p>
  <div>
    <input type="text" name="hero_subtitle" value="<?php echo $hero_subtitle?>" maxlength="80">
  </div>
  <p class="description">Get Started Link</p>
  <div>
    <input type="text" name="hero_get_started_link" value="<?php echo $hero_get_started_link?>" maxlength="120">
  </div>
  <p class="description">YouTube Link</p>
  <div>
    <input type="text" name="hero_youtube_link" value="<?php echo $hero_youtube_link?>" maxlength="120">
  </div>
  
  <?php
}

function aashura_settings_field_contact(){
  /*
  register_setting( 'aashura_settings_contact', 'location');
  register_setting( 'aashura_settings_contact', 'email');
  register_setting( 'aashura_settings_contact', 'phone');
  */
  $location = esc_attr(get_option('location'));
  $email = esc_attr(get_option('email'));
  $phone = esc_attr(get_option('phone'));
  ?>
  <p class="description">Type in your Location</p>
  <label for="location">Enter your full Company Address</label>
  <input type="text" name="location" value="<?php echo $location?>" maxlength="100">
  <?php
}

function aashura_sidebar_options()
{
 ?>
 <p>Select a picture for the landing page</p>
 <?php
}
function aashura_contact_options()
{
 ?>
 <p>Edit the Contact Page</p>
 <?php
}

add_action('admin_menu', 'aashura_add_admin_page');