<?php
settings_errors();
?>
<form method="post" action="options.php">
	<!-- render the section from the function-->
	<?php do_settings_sections('aashura_contact') ?>
	<?php settings_fields('aashura_settings_contact') ?>
	<!-- hidden important fields-->
	<?php submit_button('save me') ?>
</form>
<?php
