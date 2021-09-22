<?php
settings_errors();
?>
<form method="post" action="options.php">
<!-- hidden important fields-->
<?php settings_fields('aashura_settings_contact') ?>
<!-- render the section from the function-->
<?php do_settings_sections('aashura_contact_settings') ?>
<?php submit_button('save me') ?>
</form>

<?php
