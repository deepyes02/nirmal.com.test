<?php

function aashura_add_metabox_skills(){
  add_meta_box('skills', 'Skills', 'aashura_skill_metabox_cb', 'skills', 'normal', 'default');
}

function aashura_skill_metabox_cb($post){
  $skillPercentage = get_post_meta($post->ID, 'skillPercentage', true);
  ?>
  <p class="description">For above skillset, add available technical skill in percentage.</p>
  <label for="skillPercentage">Skill in percentage</label>
  <input type="number" name="skillPercentage" value="<?php echo $skillPercentage?>">

  <?php
}

add_action('admin_menu', 'aashura_add_metabox_skills');

function aashura_skills_save_meta($post_id, $post){
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
   if ($post->post_type != 'skills'){
     return $post_id;
   }
 
   //update / delete post meta
   if(isset($_POST['skillPercentage'])){
     update_post_meta( $post_id, 'skillPercentage', sanitize_text_field($_POST['skillPercentage']), '' );
   } else {
     delete_post_meta($post_id, 'skillPercentage');
   }
   return $post_id;
}

add_action('save_post', 'aashura_skills_save_meta', 10, 2);