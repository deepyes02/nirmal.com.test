<?php

function aashura_add_admin_page()
{
    //main menu page
    add_menu_page('Aashura Options', 'Aashura Settings', 'manage_options', 'aashura_general', 'aashura_landing_page_cb', 'dashicons-star-half', 1);

    // because wordpress creates first submenu page automatically with the same title as the main page, we need to write this line to avoid that
    add_submenu_page('aashura_general', 'Aashura General', 'General', 'manage_options', 'aashura_general', 'aashura_landing_page_cb', 111);

    //submenu pages for the main page above
    add_submenu_page('aashura_general', 'Sunset Theme Options', 'Theme Options', 'manage_options', 'sunset_theme_customization', 'sunset_create_page_custom_theme', null);
}

function aashura_landing_page_cb()
{
  echo "Hello World";
}

function sunset_create_page_custom_theme()
{
  echo "Hello CSS";
}

add_action('admin_menu', 'aashura_add_admin_page');
