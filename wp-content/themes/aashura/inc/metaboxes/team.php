<?php
/**
 * Adds various metaboxes to team custom post
 */
function aashura_add_metabox_team()
{
  add_meta_box('aashura_team_position', 'Job Position', 'aashura_team_position_cb', 'team', 'normal', 'default');
  add_meta_box('aashura_team_social_media', 'Social Media', 'aashura_team_socialmedia_cb', 'team', 'normal', 'default');
}


/**
 * Callback function called from aashura_add_metabox_team().
 * Displays job position logic
 */
function aashura_team_position_cb($post)
{
  $aashura_job_position = get_post_meta($post->ID, 'job_position', true);
?>
  <label for="job_position">Position</label>
  <input name="job_position" type="text" placeholder="Product Manager" value="<?php echo $aashura_job_position ?>">
<?php
}

/**
 * 
 */
function aashura_team_socialmedia_cb($post)
{
  $twitter_url = get_post_meta($post->ID, 'twitter_profile_url', true);
  $facebook_url = get_post_meta($post->ID, 'facebook_profile_url', true);
  $instagram_url = get_post_meta($post->ID, 'instagram_profile_url', true);
  $linkedin_url = get_post_meta($post->ID, 'linkedin_profile_url', true);
?>
 <label for="twitter_profile_url">Twitter</label>
  <input name="twitter_profile_url" type="text" value="<?php echo $twitter_url ?>" placeholder="https://facebook.com/xyz">
  <label for="facebook_profile_url">Facebook</label>
  <input name="facebook_profile_url" type="text" value="<?php echo $facebook_url ?>" placeholder="https://facebook.com/xyz">
  <label for="instagram_profile_url">Instagram</label>
  <input name="instagram_profile_url" type="text" value="<?php echo $instagram_url ?>" placeholder="https://facebook.com/xyz">
  <label for="linkedin_profile_url">Linkedin</label>
  <input name="linkedin_profile_url" type="text" value="<?php echo $linkedin_url ?>" placeholder="https://facebook.com/xyz">
<?php
}

add_action('save_post', 'aashura_team_social_media_save', 10, 2);
function aashura_team_social_media_save($post_id, $post){
   //check user permissions
   $post_type = get_post_type_object($post->post_type);
   if (!current_user_can($post_type->cap->edit_post, $post_id)) {
     return $post_id;
   }
   //don't save data on autosave
   if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
     return $post_id;
   }
 
   //define the post type
   if ($post->post_type != 'team') {
     return $post_id;
   }
   $arr_socialMedias = ['twitter_profile_url', 'facebook_profile_url', 'instagram_profile_url', 'linkedin_profile_url'];
   foreach ($arr_socialMedias as $socialMedia) {
     if (isset ($_POST[$socialMedia])){
       update_post_meta($post_id, $socialMedia, $_POST[$socialMedia], '');
     } else delete_post_meta($post_id, $socialMedia);
   }
   return $post_id;
}



add_action('save_post', 'aashura_team_position_save', 10, 2);
function aashura_team_position_save($post_id, $post)
{
  //check user permissions
  $post_type = get_post_type_object($post->post_type);
  if (!current_user_can($post_type->cap->edit_post, $post_id)) {
    return $post_id;
  }
  //don't save data on autosave
  if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
    return $post_id;
  }

  //define the post type
  if ($post->post_type != 'team') {
    return $post_id;
  }

  if (isset($_POST['job_position'])) {
    update_post_meta($post_id, 'job_position', sanitize_text_field($_POST['job_position']), '');
  } else {
    delete_post_meta($post_id, 'job_position');
  }
  return $post_id;
}


//call the add_metabox_team function
add_action('admin_menu', 'aashura_add_metabox_team');
