<?php

function aashur_cpp_services(){
  $labels = [
    'name'            => 'Services',
    'singular_name'   => 'Service',
    'plural_name'     => 'Services',
    'add_new'         => 'Add New Service',
    'add_items'       => 'All Services',
    'edit_item'       => 'Edit Service',
    'new_item'        => 'New Service',
    'search_item'     => 'Search Services',
    'not_found'       => 'No Services Found',
    'not_found_in_trash'  => 'No Services found in trash',
    'parent_item_colon'   => ''
  ];
  $args = [
    'labels'  => $labels,
    'public'  => true,
    'has_archive' => false,
    'menu_icon'   => 'dashicons-format-gallery',
    'show_ui'     => true,
    'publicly_queryable'  => true,
    'query_var'     => true,
    'rewrite'     => true,
    'capability_type' => 'post',
    'heirarchical'  => false,
    'supports' => ['title', 'excerpt', 'thumbnail'],
    // 'taxonomies'  => array('category'),
    'menu_position' => 2,
    'exclude_from_search' => false,
  ];
  register_post_type('services', $args);
}

add_action('init', 'aashur_cpp_services');