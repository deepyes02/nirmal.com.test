<?php
//brands

function aashura_cpp_contacts(){
  $labels = [
    'name'            => 'Contacts',
    'singular_name'   => 'Contact',
    'plural_name'     => 'Contacts',
    'add_new'         => 'Add New Contact',
    'add_items'       => 'All Contacts',
    'edit_item'       => 'Edit Contact',
    'new_item'        => 'New Contact',
    'search_item'     => 'Search Contact',
    'not_found'       => 'No Contact Found',
    'not_found_in_trash'  => 'No Contact found in trash',
    'parent_item_colon'   => ''
  ];
  $args = [
    'labels'  => $labels,
    'public'  => true,
    'has_archive' => false,
    'menu_icon'   => 'dashicons-universal-access',
    'show_ui'     => true,
    'publicly_queryable'  => false,
    'query_var'     => false,
    'rewrite'     => true,
    'capability_type' => 'post',
    'heirarchical'  => false,
    'supports' => ['title'],
    'menu_position' => 2,
    'exclude_from_search' => false,
  ];
  register_post_type('contacts', $args);
}

add_action('init', 'aashura_cpp_contacts');