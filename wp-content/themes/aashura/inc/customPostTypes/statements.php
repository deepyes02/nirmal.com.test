<?php

function aashur_cpp_statements(){
  $labels = [
    'name'            => 'Statements',
    'singular_name'   => 'Statement',
    'plural_name'     => 'Statements',
    'add_new'         => 'Add New Statement',
    'add_items'       => 'All Statements',
    'edit_item'       => 'Edit Statement',
    'new_item'        => 'New Statement',
    'search_item'     => 'Search Gallery',
    'not_found'       => 'No Items Found',
    'not_found_in_trash'  => 'No items found in trash',
    'parent_item_colon'   => ''
  ];
  $args = [
    'labels'  => $labels,
    'public'  => true,
    'has_archive' => false,
    'menu_icon'   => 'dashicons-info',
    'show_ui'     => true,
    'publicly_queryable'  => true,
    'query_var'     => true,
    'rewrite'     => true,
    'capability_type' => 'post',
    'heirarchical'  => false,
    'supports' => ['title', 'excerpt'],
    // 'taxonomies'  => array('category'),
    'menu_position' => 3,
    'exclude_from_search' => false,
  ];
  register_post_type('statements', $args);
}

add_action('init', 'aashur_cpp_statements');