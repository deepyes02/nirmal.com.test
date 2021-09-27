<?php

function aashura_add_dashboard_widget_1()
{
	wp_add_dashboard_widget("aashura_sitepoint", "Aashura Dashboard", "aashuraCreateDashboard", null, null, 'normal', 'high');
}
/** */
function aashuraCreateDashboard()
{
	echo "<h2>Aashura - Devilishly Wordpress</h2>";
}

add_action('wp_dashboard_setup', "aashura_add_dashboard_widget_1");
