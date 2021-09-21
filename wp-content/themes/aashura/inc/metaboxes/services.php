<?php

function aashura_add_metabox(){
  add_meta_box( 'services_icon', 'Services Icon', 'aashura_add_metabox_cb', 'services', 'normal', 'default');
}

function aashura_add_metabox_cb($post){
  $iconcode = get_post_meta($post->ID, 'iconcode', true);
  // nonce, actually I think it is not necessary here
  ?>
  <h4>Enter the code for the icon. "E.g: bx bxl-dribbble" &nbsp;&nbsp;<a href="https://boxicons.com/" target="_blank">Search Icons here</a></h4>
    <input name="iconcode" type="text" value="<?php echo $iconcode?>"/>
  <?php
}

add_action('admin_menu', 'aashura_add_metabox');

function aashura_services_save_meta($post_id, $post){
  //check user permissions
  $post_type = get_post_type_object($post->post_type);
  if( ! current_user_can( $post_type->cap->edit_post, $post_id)){
    return $post_id;
  }
  //don't save data on autosave
  if( defined ('DOING_AUTOSAVE') && DOING_AUTOSAVE){
    return $post_id;
  }

  //define the post type
  if ($post->post_type != 'services'){
    return $post_id;
  }

  //update / delete post meta
  if(isset($_POST['iconcode'])){
    update_post_meta( $post_id, 'iconcode', sanitize_text_field($_POST['iconcode']), '' );
  } else {
    delete_post_meta($post_id, 'iconcode');
  }
  return $post_id;

}

add_action('save_post', 'aashura_services_save_meta', 10, 2);