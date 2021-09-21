<?php

function aashur_cpp_team(){
  $labels = [
    'name'            => 'Team',
    'singular_name'   => 'Team',
    'plural_name'     => 'Teams',
    'add_new'         => 'Add New Team',
    'add_items'       => 'All Teams',
    'edit_item'       => 'Edit Team',
    'new_item'        => 'New Team',
    'search_item'     => 'Search Teams',
    'not_found'       => 'No Team Found',
    'not_found_in_trash'  => 'No Team found in trash',
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
    'menu_position' => 2,
    'exclude_from_search' => false,
  ];
  register_post_type('team', $args);
}

add_action('init', 'aashur_cpp_team');