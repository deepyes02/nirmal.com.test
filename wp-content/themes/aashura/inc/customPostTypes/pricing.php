<?php

function aashura_cpp_pricing(){
  $labels = [
    'name'            => 'Pricing',
    'singular_name'   => 'Pricing',
    'plural_name'     => 'Pricings',
    'add_new'         => 'Add New Pricing',
    'add_items'       => 'All Pricings',
    'edit_item'       => 'Edit Pricing',
    'new_item'        => 'New Pricing',
    'search_item'     => 'Search Pricing',
    'not_found'       => 'No Pricing Found',
    'not_found_in_trash'  => 'No Pricing found in trash',
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
    // 'taxonomies'  => array('category'),
    'menu_position' => 2,
    'exclude_from_search' => false,
  ];
  register_post_type('pricing', $args);
}

add_action('init', 'aashura_cpp_pricing');