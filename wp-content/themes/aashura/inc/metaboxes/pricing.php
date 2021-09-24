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
	$feature1_val = get_post_meta($post->ID, 'feature1_field', true);
	$feature2 = get_post_meta($post->ID, 'feature2', true);
	$feature3 = get_post_meta($post->ID, 'feature3', true);
	$feature4 = get_post_meta($post->ID, 'feature4', true);
	$feature5 = get_post_meta($post->ID, 'feature5', true);
?>
	<div id="features_container">
		<div class="features_container__inner">
			<input name="feature1" id="feature1" type="text" maxlength="80" value="<?php echo $feature1 ?>">
			<select name="feature1_field" id="feature1_field" class="postbox">
				<option value="">Feature Available / Not Available</option>
				<option value="something" <?php selected($feature1_val, 'something'); ?>>Something</option>
				<option value="else" <?php selected($feature1_val, 'else'); ?>>Else</option>
			</select>
		</div>
		<div class="features_container__inner">
			<input name="feature2" id="feature2" type="text" maxlength="80" value="<?php echo $feature2 ?>">
		</div>
		<div class="features_container__inner">
			<input name="feature3" id="feature3" type="text" maxlength="80" value="<?php echo $feature3 ?>">
		</div>
		<div class="features_container__inner">
			<input name="feature4" id="feature4" type="text" maxlength="80" value="<?php echo $feature4 ?>">
		</div>
		<div class="features_container__inner">
			<input name="feature5" id="feature5" type="text" maxlength="80" value="<?php echo $feature5 ?>">
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
	if(isset($_POST['feature1_field'])){
		update_post_meta($post_id, 'feature1_field', $_POST['feature1_field']);
	} else delete_post_meta($post_id, 'feature1_field');
}
add_action('save_post', 'aashura_save_metabox_pricing', 10, 2);