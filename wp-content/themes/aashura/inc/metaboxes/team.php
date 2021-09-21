<?php

function aashura_add_metabox_team(){
  add_meta_box( 'aashura_team', 'Job Position', 'aashura_add_mb_team_cb', 'team', 'normal', 'default');
}
function aashura_add_mb_team_cb($post){
  $aashura_job_position = get_post_meta($post->ID, 'job_position', true);
  ?>
  <label for="job_position">Position</label>
  <input name="job_position" type="text" placeholder="Product Manager" value = "<?php echo $aashura_job_position?>">
  <?php
}
add_action('admin_menu', 'aashura_add_metabox_team');

function aashura_team_save_meta($post_id, $post){
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
  if ($post->post_type != 'team'){
    return $post_id;
  }

  if(isset ($_POST['job_position'])){
    update_post_meta($post_id, 'job_position', sanitize_text_field( $_POST['job_position']), '');
  } else {
    delete_post_meta($post_id, 'job_position');
  }
  return $post_id;
}

add_action('save_post', 'aashura_team_save_meta', 10, 2);