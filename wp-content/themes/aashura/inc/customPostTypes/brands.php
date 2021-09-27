<?php
//brands

function aashur_cpp_clients(){
  $labels = [
    'name'            => 'Clients',
    'singular_name'   => 'Client',
    'plural_name'     => 'Clients',
    'add_new'         => 'Add New Client',
    'add_items'       => 'All Clients',
    'edit_item'       => 'Edit Client',
    'new_item'        => 'New Client',
    'search_item'     => 'Search Client',
    'not_found'       => 'No Client Found',
    'not_found_in_trash'  => 'No Client found in trash',
    'parent_item_colon'   => ''
  ];
  $args = [
    'labels'  => $labels,
    'public'  => true,
    'has_archive' => false,
    'menu_icon'   => 'dashicons-image-filter',
    'show_ui'     => true,
    'publicly_queryable'  => true,
    'query_var'     => true,
    'rewrite'     => true,
    'capability_type' => 'post',
    'heirarchical'  => false,
    'supports' => ['title', 'thumbnail'],
    'menu_position' => 2,
    'exclude_from_search' => false,
  ];
  register_post_type('clients', $args);
}

add_action('init', 'aashur_cpp_clients');