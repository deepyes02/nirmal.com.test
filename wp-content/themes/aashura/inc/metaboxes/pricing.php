<?php
function aashura_add_metabox_pricing()
{
	add_meta_box('pricing', 'Pricing', 'aashura_add_metabox_pricing_cb', 'pricing', 'normal', 'default');
	add_meta_box('feature', 'Features', 'aashura_add_meta_box_feature_cb', 'pricing', 'normal', 'default');
}
add_action('admin_menu', 'aashura_add_metabox_pricing', 10);

//Pricing callback
function aashura_add_metabox_pricing_cb($post)
{
	$pricing = get_post_meta($post->ID, 'pricing', true);
?>
	<label for="pricing">Enter the pricing (US $). e.g: 10, 20,etc</label>
	<input name="pricing" type="number" max="1000" min="0" value="<?php echo $pricing ?>">
<?php
}

//Features Callback
function aashura_add_meta_box_feature_cb($post)
{
	$feature1 = get_post_meta($post->ID, 'feature1', true);
	$feature1_val = get_post_meta($post->ID, 'feature1_val', true);
	$feature2 = get_post_meta($post->ID, 'feature2', true);
	$feature2_val = get_post_meta($post->ID, 'feature2_val', true);
	$feature3 = get_post_meta($post->ID, 'feature3', true);
	$feature3_val = get_post_meta($post->ID, 'feature3_val', true);
	$feature4 = get_post_meta($post->ID, 'feature4', true);
	$feature4_val = get_post_meta($post->ID, 'feature4_val', true);
	$feature5 = get_post_meta($post->ID, 'feature5', true);
	$feature5_val = get_post_meta($post->ID, 'feature5_val', true);
?>
	<div id="features_container">
		<div class="features_container__inner">
			<input name="feature1" id="feature1" type="text" maxlength="80" value="<?php echo $feature1 ?>">
			<select name="feature1_val" id="feature1_val" class="postbox">
				<option value="">Feature Available / Not Available</option>
				<option value="available" <?php selected($feature1_val, 'available'); ?>>Available</option>
				<option value="notAvailable" <?php selected($feature1_val, 'notAvailable'); ?>>Not Available</option>
			</select>
		</div>
		<div class="features_container__inner">
			<input name="feature2" id="feature2" type="text" maxlength="80" value="<?php echo $feature2 ?>">
			<select name="feature2_val" id="feature2_val" class="postbox">
				<option value="">Feature Available / Not Available</option>
				<option value="available" <?php selected($feature2_val, 'available'); ?>>Available</option>
				<option value="notAvailable" <?php selected($feature2_val, 'notAvailable'); ?>>Not Available</option>
			</select>
		</div>
		<div class="features_container__inner">
			<input name="feature3" id="feature3" type="text" maxlength="80" value="<?php echo $feature3 ?>">
			<select name="feature3_val" id="feature3_val" class="postbox">
				<option value="">Feature Available / Not Available</option>
				<option value="available" <?php selected($feature3_val, 'available'); ?>>Available</option>
				<option value="notAvailable" <?php selected($feature3_val, 'notAvailable'); ?>>Not Available</option>
			</select>
		</div>
		<div class="features_container__inner">
			<input name="feature4" id="feature4" type="text" maxlength="80" value="<?php echo $feature4 ?>">
			<select name="feature4_val" id="feature4_val" class="postbox">
				<option value="">Feature Available / Not Available</option>
				<option value="available" <?php selected($feature4_val, 'available'); ?>>Available</option>
				<option value="notAvailable" <?php selected($feature4_val, 'notAvailable'); ?>>Not Available</option>
			</select>
		</div>
		<div class="features_container__inner">
			<input name="feature5" id="feature5" type="text" maxlength="80" value="<?php echo $feature5 ?>">
			<select name="feature5_val" id="feature5_val" class="postbox">
				<option value="">Feature Available / Not Available</option>
				<option value="available" <?php selected($feature5_val, 'available'); ?>>Available</option>
				<option value="notAvailable" <?php selected($feature5_val, 'notAvailable'); ?>>Not Available</option>
			</select>
		</div>
	</div>
<?php
}

//save
function aashura_save_metabox_pricing($post_id, $post)
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
	if ($post->post_type != 'pricing') {
		return $post_id;
	}
	//update/delete pricing value
	if (isset($_POST['pricing'])) {
		update_post_meta($post_id, 'pricing', sanitize_text_field($_POST['pricing']), '');
	} else {
		//delete
		delete_post_meta($post_id, 'pricing');
	}
	//save the features dynamically using array
	$features = ['feature1', 'feature2', 'feature3', 'feature4', 'feature5'];
	// update / delte features value
	foreach ($features as $feature) {
		if (isset($_POST[$feature])) {
			update_post_meta($post_id, $feature, sanitize_text_field($_POST[$feature]), '');
		} else {
			//delete
			delete_post_meta($post_id, $feature);
		}
	}

	//save metabox 1
	if (isset($_POST['feature1_val'])) {
		update_post_meta($post_id, 'feature1_val', $_POST['feature1_val']);
	} else delete_post_meta($post_id, 'feature1_val');
	//save metabox 2
	if (isset($_POST['feature2_val'])) {
		update_post_meta($post_id, 'feature2_val', $_POST['feature2_val']);
	} else delete_post_meta($post_id, 'feature2_val');
if (isset($_POST['feature3_val'])) {
		update_post_meta($post_id, 'feature3_val', $_POST['feature3_val']);
	} else delete_post_meta($post_id, 'feature3_val');
if (isset($_POST['feature4_val'])) {
		update_post_meta($post_id, 'feature4_val', $_POST['feature4_val']);
	} else delete_post_meta($post_id, 'feature4_val');
if (isset($_POST['feature5_val'])) {
		update_post_meta($post_id, 'feature5_val', $_POST['feature5_val']);
	} else delete_post_meta($post_id, 'feature5_val');
}
add_action('save_post', 'aashura_save_metabox_pricing', 10, 2);
