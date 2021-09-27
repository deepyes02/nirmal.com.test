<?php

function aashura_add_metabox_contacts()
{
	add_meta_box('contacts', 'Contact Information', 'aashura_contact_metabox_cb', 'contacts', 'normal', 'default');
}

function aashura_contact_metabox_cb($post)
{
	$contactEmail = get_post_meta($post->ID, 'contactEmail', true);
	$contactSubject = get_post_meta($post->ID, 'contactSubject', true);
	$contactMessage = get_post_meta($post->ID, 'contactMessage', true);
?>
	<p class="description">Enter the contact Details</p>
	<label for="contactEmail">Email</label>
	<input type="email" name="contactEmail" value="<?php echo $contactEmail ?>">
	<br>
	<label for="contactSubject">Email Subject</label>
	<input type="text" name="contactSubject" value="<?php echo $contactSubject ?>">
	<br>
	<label for="contactMessage">Contact Message</label>
	<textarea name="contactMessage" rows="5" cols="80"><?php echo $contactMessage ?></textarea>

<?php
}

add_action('admin_menu', 'aashura_add_metabox_contacts');

function aashura_contacts_save_meta($post_id, $post)
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
	if ($post->post_type != 'contacts') {
		return $post_id;
	}
	$subject_array = ['contactEmail', 'contactSubject', 'contactMessage'];
	// foreach ($subject_array as $subject) {
	// 	if (isset($_POST[$post])) {
	// 		update_post_meta($post_id, $subject, sanitize_text_field($_POST[$subject]), '');
	// 	} else delete_post_meta($post_id, $subject);
	// }
	//update / delete post meta
	if (isset($_POST['contactEmail'])) {
		update_post_meta($post_id, 'contactEmail', sanitize_text_field($_POST['contactEmail']), '');
	} else {
		delete_post_meta($post_id, 'contactEmail');
	}
	if (isset($_POST['contactSubject'])) {
		update_post_meta($post_id, 'contactSubject', sanitize_text_field($_POST['contactSubject']), '');
	} else {
		delete_post_meta($post_id, 'contactSubject');
	}
	if (isset($_POST['contactMessage'])) {
		update_post_meta($post_id, 'contactMessage', sanitize_textarea_field($_POST['contactMessage']), '');
	} else {
		delete_post_meta($post_id, 'contactMessage');
	}
	return $post_id;
}

add_action('save_post', 'aashura_contacts_save_meta', 10, 2);
