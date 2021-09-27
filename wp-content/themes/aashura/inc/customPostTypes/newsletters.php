<?php
//newsletters

function aashura_cpp_newsletters(){
  $labels = [
    'name'            => 'Newsletters',
    'singular_name'   => 'Newsletter',
    'plural_name'     => 'Newsletters',
    'add_new'         => 'Add New Newsletter',
    'add_items'       => 'All Newsletters',
    'edit_item'       => 'Edit Newsletter',
    'new_item'        => 'New Newsletter',
    'search_item'     => 'Search Newsletter',
    'not_found'       => 'No Newsletter Found',
    'not_found_in_trash'  => 'No Newsletter found in trash',
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
    'supports' => ['title'],
    'menu_position' => 2,
    'exclude_from_search' => false,
  ];
  register_post_type('newsletters', $args);
}

add_action('init', 'aashura_cpp_newsletters');