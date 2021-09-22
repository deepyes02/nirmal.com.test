<?php

function aashur_cpp_skills(){
  $labels = [
    'name'            => 'Skills',
    'singular_name'   => 'Skill',
    'plural_name'     => 'Skills',
    'add_new'         => 'Add New Skill',
    'add_items'       => 'All Skills',
    'edit_item'       => 'Edit Skill',
    'new_item'        => 'New Skill',
    'search_item'     => 'Search Skills',
    'not_found'       => 'No Skill Found',
    'not_found_in_trash'  => 'No Skill found in trash',
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
  register_post_type('skills', $args);
}

add_action('init', 'aashur_cpp_skills');