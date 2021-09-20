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

  //settings section
  add_settings_section('aashura_settings_section_landing', 'Landing Page', 'aashura_sidebar_options', 'aashura_general');
  //settings field
  add_settings_field('sunset_landing_title', 'Landing Title', 'sunset_settings_field_name', 'aashura_general', 'aasura_settings_personal');
}

function aashura_landing_page_cb()
{
  require_once(get_template_directory() . '/inc/templates/sunset.admin.general.php');
}
function sunset_settings_field_name()
{
  echo "field";
}
function aashura_sidebar_options()
{
  echo "I am a sidebar";
}
add_action('admin_menu', 'aashura_add_admin_page');

function sunset_create_page_custom_theme()
{
  echo "Hello CSS";
}
