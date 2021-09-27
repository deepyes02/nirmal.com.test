<?php

function aashur_cpp_faqs(){
  $labels = [
    'name'            => 'FAQs',
    'singular_name'   => 'FAQ',
    'plural_name'     => 'FAQs',
    'add_new'         => 'Add New FAQ',
    'add_items'       => 'All FAQs',
    'edit_item'       => 'Edit FAQ',
    'new_item'        => 'New FAQ',
    'search_item'     => 'Search FAQ',
    'not_found'       => 'No FAQs Found',
    'not_found_in_trash'  => 'No FAQs found in trash',
    'parent_item_colon'   => ''
  ];
  $args = [
    'labels'  => $labels,
    'public'  => true,
    'has_archive' => false,
    'menu_icon'   => 'dashicons-megaphone',
    'show_ui'     => true,
    'publicly_queryable'  => true,
    'query_var'     => true,
    'rewrite'     => true,
    'capability_type' => 'post',
    'heirarchical'  => false,
    'supports' => ['title', 'excerpt'],
    'menu_position' => 2,
    'exclude_from_search' => false,
  ];
  register_post_type('faqs', $args);
}

add_action('init', 'aashur_cpp_faqs');