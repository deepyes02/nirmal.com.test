<?php

function aashura_add_admin_page()
{
  //main menu page
  add_menu_page('Aashura Options', 'Aashura Settings', 'manage_options', 'aashura_general', 'aashura_landing_page_cb', 'dashicons-star-half', 1);

  // because wordpress creates first submenu page automatically with the same title as the main page, we need to write this line to avoid that
  add_submenu_page('aashura_general', 'Aashura General', 'General', 'manage_options', 'aashura_general', 'aashura_landing_page_cb', 111);

  //submenu pages for the main page above
  add_submenu_page('aashura_general', 'Sunset Theme Options', 'Theme Options', 'manage_options', 'sunset_theme_customization', 'sunset_create_page_custom_theme', null);

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
}

function aashura_landing_page_cb()
{
  require_once(get_template_directory() . '/inc/templates/sunset.admin.general.php');
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
function aashura_sidebar_options()
{
 ?>
 <p>Select a picture for the landing page</p>
 <?php
}


function sunset_create_page_custom_theme()
{
  echo "Hello CSS";
}

add_action('admin_menu', 'aashura_add_admin_page');