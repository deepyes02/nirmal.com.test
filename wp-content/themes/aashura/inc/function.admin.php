<?php

function aashura_add_admin_page()
{
	//main menu page
	add_menu_page('Aashura Options', 'Aashura Settings', 'manage_options', 'aashura_general', 'aashura_landing_page_cb', 'dashicons-star-half', 1);
	// because wordpress creates first submenu page automatically with the same title as the main page, we need to write this line to avoid that
	add_submenu_page('aashura_general', 'Aashura General', 'General', 'manage_options', 'aashura_general', 'aashura_landing_page_cb', 111);
	//submenu contact settings
	add_submenu_page('aashura_general', 'Contact Settings', 'Contact & Map', 'manage_options', 'aashura_contact', 'aashura_contact_page_cb', 112);
	add_action('admin_init', 'aashura_custom_settings');
}
/**
 * Register a setting name along with a group name where it belongs
 * add section for the setting
 * add field for the setting
 */
function aashura_custom_settings()
{
	//settings group personal
	register_setting('aasura_settings_personal', 'hero_title');
	register_setting('aasura_settings_personal', 'hero_subtitle');
	register_setting('aasura_settings_personal', 'hero_get_started_link');
	register_setting('aasura_settings_personal', 'hero_youtube_link');
	//settings section
	add_settings_section('aashura_settings_section_landing', 'Landing Page', 'aashura_sidebar_options', 'aashura_general');
	//settings field
	add_settings_field('sunset_landing_title', 'Landing Title', 'aashura_settings_field_hero', 'aashura_general', 'aashura_settings_section_landing');

	//settings group contact
	register_setting('aashura_settings_contact', 'location');
	register_setting('aashura_settings_contact', 'email');
	register_setting('aashura_settings_contact', 'phone');
	register_setting('aashura_settings_contact', 'googleMapEmbed');
	register_setting('aashura_settings_contact', 'googleMapEmbed');
	
register_setting('aashura_settings_contact', 'twitterLink');
register_setting('aashura_settings_contact', 'facebookLink');
register_setting('aashura_settings_contact', 'instagramLink');
register_setting('aashura_settings_contact', 'skypeLink');
register_setting('aashura_settings_contact', 'linkedinLink');
	

	add_settings_section('aashura_settings_section_contact', 'Contact Page', 'aashura_contact_options', 'aashura_contact');
	add_settings_field('aashura_contact_page', 'Enter Contact Details', 'aashura_settings_field_contact', 'aashura_contact', 'aashura_settings_section_contact');
}

//landing page callback
function aashura_landing_page_cb()
{
	require_once(get_template_directory() . '/inc/templates/aashura.admin.general.php');
}
//contact page callback
function aashura_contact_page_cb()
{
	require_once(get_template_directory() . '/inc/templates/aashura.admin.contact.php');
}

function aashura_settings_field_hero()
{

	$hero_title = esc_attr(get_option('hero_title'));
	$hero_subtitle = esc_attr(get_option('hero_subtitle'));
	$hero_get_started_link = esc_attr(get_option('hero_get_started_link'));
	$hero_youtube_link = esc_attr(get_option('hero_youtube_link'));
?>
	<p class="description">Type in your title</p>
	<div>
		<input type="text" name="hero_title" value="<?php echo $hero_title ?>" maxlength="50">
	</div>
	<p class="description">Type in your subtitle</p>
	<div>
		<input type="text" name="hero_subtitle" value="<?php echo $hero_subtitle ?>" maxlength="80">
	</div>
	<p class="description">Get Started Link</p>
	<div>
		<input type="text" name="hero_get_started_link" value="<?php echo $hero_get_started_link ?>" maxlength="120">
	</div>
	<p class="description">YouTube Link</p>
	<div>
		<input type="text" name="hero_youtube_link" value="<?php echo $hero_youtube_link ?>" maxlength="120">
	</div>

<?php
}

function aashura_settings_field_contact()
{

	$location = esc_attr(get_option('location'));
	$email = esc_attr(get_option('email'));
	$phone = esc_attr(get_option('phone'));
	$googleMapEmbed = get_option('googleMapEmbed');
	$twitterLink = esc_attr(get_option('twitterLink'));
	$facebookLink = esc_attr(get_option('facebookLink'));
	$instagramLink = esc_attr(get_option('instagramLink'));
	$skypeLink = esc_attr(get_option('skypeLink'));
	$linkedinLink = esc_attr(get_option('linkedinLink'));
?>
	<p class="description">Your address will appear at various location of the page, including footer and contact pages</p>
	<label for="location">Full Company Address</label>
	<input type="text" name="location" value="<?php echo $location ?>" maxlength="100">
	<label for="email">Company Email</label>
	<input type="email" name="email" value="<?php echo $email ?>" maxlength="50">
	<label for="phone">Company Phone</label>
	<input type="text" name="phone" value="<?php echo $phone ?>" maxlength="15">
	<label for="googleMapEmbed">Google Map Embed</label>
	<textarea name="googleMapEmbed" rows="4" cols="100"><?php echo $googleMapEmbed?></textarea>
<br>
<label for="twitterLink">Twitter Link</label>
<input type="text" name="twitterLink" value="<?php echo $twitterLink?>" maxlength="50">
<br>
<label for="facebookLink">Facebook Link</label>
<input type="text" name="facebookLink" value="<?php echo $facebookLink?>" maxlength="50">
<br>
<label for="instagramLink">Instagram Link</label>
<input type="text" name="instagramLink" value="<?php echo $instagramLink?>" maxlength="50">
<br>
<label for="skypeLink">Skype Link</label>
<input type="text" name="skypeLink" value="<?php echo $skypeLink?>" maxlength="50">
<br>
<label for="linkedinLink">Linkedin Link</label>
<input type="text" name="linkedinLink" value="<?php echo $linkedinLink?>" maxlength="50">
<?php
}

function aashura_sidebar_options()
{
?>
	<p>Select a picture for the landing page</p>
<?php
}
function aashura_contact_options()
{
?>
	<p>Provide contact information about the company and the google map link</p>
<?php
}

add_action('admin_menu', 'aashura_add_admin_page');
