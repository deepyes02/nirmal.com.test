<form method="post" action="options.php">
<!-- hidden important fields-->
<?php settings_fields('aasura_settings_personal') ?>
<!-- render the section from the function-->
<?php do_settings_sections('aashura_general') ?>
<?php submit_button('save me') ?>
</form>

<?php
