<?php

function aashura_add_metabox(){
  add_meta_box( 'services_icon', 'Services Icon', 'aashura_add_metabox_cb', 'services', 'side', 'default');
}

function aashura_add_metabox_cb(){
  echo "Hello";
}

add_action('admin_menu', 'aashura_add_metabox');