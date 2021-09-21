<?php
//portfolio

function aashur_cpp_portfolio(){
  $labels = [
    'name'            => 'Portfolio',
    'singular_name'   => 'Portfolio',
    'plural_name'     => 'Portfolio',
    'add_new'         => 'Add New Portfolio',
    'add_items'       => 'All Portfolio',
    'edit_item'       => 'Edit Portfolio',
    'new_item'        => 'New Portfolio',
    'search_item'     => 'Search Portfolio',
    'not_found'       => 'No Portfolio Found',
    'not_found_in_trash'  => 'No Portfolio found in trash',
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
    'taxonomies'  => array('type'),
    'menu_position' => 2,
    'exclude_from_search' => false,
  ];
  register_post_type('portfolio', $args);
}

add_action('init', 'aashur_cpp_portfolio');

// also create custom taxonomy for this
function aashura_create_portfolio_taxonomy(){
  $args = ['heirarchical'=> false, 'label' => 'Portfolio Type', 'query_var'=>true, 'has_archive'=>true,'rewrite'=>array('slug'=>'type')];
  register_taxonomy('type', 'portfolio', $args);
}
add_action('init', 'aashura_create_portfolio_taxonomy');
