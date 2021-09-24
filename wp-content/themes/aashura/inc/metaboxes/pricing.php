<?php
function aashura_add_metabox_pricing()
{
	add_meta_box('pricing', 'Pricing', 'aashura_add_metabox_pricing_cb', 'pricing', 'normal', 'default');
	add_meta_box('features', 'Pricing Features', 'aashura_add_meta_box_feature', 'pricing', 'normal', 'default');
}

function aashura_add_metabox_pricing_cb($post)
{
	$pricing = get_post_meta($post->ID, 'pricing', true);
?>
	<h4>Enter the pricing (US $). e.g: 10, 20,etc</h4>
	<input name="pricing" type="number" max="1000" min="0" value="<?php echo $pricing ?>">
<?php
}
add_action('admin_menu', 'aashura_add_metabox_pricing', 10);
add_action('admin_menu', 'aashura_add_meta_box_feature', 11);

//meta box for features

function aashura_add_meta_box_feature($post)
{
	$feature1 = get_post_meta($post->ID, 'feature1', true);
?>
	<div id="features_container">
		<div class="features_container__inner">
			<input name="feature1" id="feature1" type="text" value="<?php echo $feature1 ?>" />
		</div>
	</div>
<?php
}

//save
function aashura_services_save_meta_pricing($post_id, $post)
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
	// update / delte features value
	if (isset($_POST['feature1'])) {
		update_post_meta($post_id, 'feature1', sanitize_text_field($_POST['feature1']), '');
	} else {
		//delete
		delete_post_meta($post_id, 'feature1');
	}
}

add_action('save_post', 'aashura_services_save_meta_pricing', 10, 2);
