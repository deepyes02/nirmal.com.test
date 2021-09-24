<?php
settings_errors();
?>
<form method="post" action="options.php">
	<!-- render the section from the function-->
	<?php do_settings_sections('aashura_general') ?>
	<!-- hidden important fields-->
	<?php settings_fields('aasura_settings_personal') ?>
	<?php submit_button('save me') ?>
</form>

<?php
