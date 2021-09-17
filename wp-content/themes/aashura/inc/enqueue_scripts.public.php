<?php
$vendorFilePath = get_template_directory_uri() . '/assets/vendor';
add_action('wp_enqueue_scripts', 'aashura_enqueue_public_styles', 10);
add_action('wp_enqueue_scripts', 'aashura_enqueue_public_scripts', 11);
/**
 * Enqueue Necessary StyleSheet
 */
function aashura_enqueue_public_styles(){
  //fonts and css
  global $vendorFilePath;
  wp_enqueue_style( 'googleFontOpenSans', 'https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i' , array(), null, 'all' );
  wp_enqueue_style( 'aos', $vendorFilePath . '/aos/aos.css', array(), null, 'all' );
  wp_enqueue_style( 'bootstrap-min', $vendorFilePath . '/bootstrap/css/bootstrap.min.css', array(), null, 'all' );
  wp_enqueue_style( 'bootstrap-icons', $vendorFilePath . '/bootstrap-icons/bootstrap-icons.css', array(), null, 'all' );
  wp_enqueue_style( 'boxicons', $vendorFilePath . '/boxicons/css/boxicons.min.css', array(), null, 'all' );
  wp_enqueue_style( 'glightbox', $vendorFilePath . '/glightbox/css/glightbox.min.css', array(), null, 'all' );
  wp_enqueue_style( 'remixicon', $vendorFilePath . '/remixicon/remixicon.css', array(), null, 'all' );
  wp_enqueue_style( 'swiper', $vendorFilePath . '/swiper/swiper-bundle.min.css', array(), null, 'all' );
  wp_enqueue_style( 'mainStyle', get_template_directory_uri() . '/assets/css/style.css', array(), null, 'all' );
}

function aashura_enqueue_public_scripts(){
  global $vendorFilePath;
  wp_enqueue_script( 'aos', $vendorFilePath . '/aos/aos.js', array(), NULL, TRUE);
  wp_enqueue_script( 'bootstrap-bundle', $vendorFilePath . '/bootstrap/js/bootstrap.bundle.min.js', array(), NULL, TRUE);
  wp_enqueue_script( 'glightbox', $vendorFilePath . '/glightbox/js/glightbox.min.js', array(), NULL, TRUE);
  wp_enqueue_script( 'isotope', $vendorFilePath . '/isotope-layout/isotope.pkgd.min.js', array(), NULL, TRUE);
  wp_enqueue_script( 'validate', $vendorFilePath . '/php-email-form/validate.js', array(), NULL, TRUE);
  wp_enqueue_script( 'swiper', $vendorFilePath . '/swiper/swiper-bundle.min.js', array(), NULL, TRUE);
  wp_enqueue_script( 'waypoints', $vendorFilePath . '/waypoints/noframework.waypoints.js', array(), NULL, TRUE);
  wp_enqueue_script('main', get_template_directory_uri() . '/assets/js/main.js', array(), NULL, TRUE );
}
  /*
  <!-- Vendor JS Files -->
<script src="<?php echo get_template_directory_uri() ?>/assets/vendor/aos/aos.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/assets/vendor/php-email-form/validate.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/assets/vendor/waypoints/noframework.waypoints.js"></script>

<!-- Template Main JS File -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/main.js"></script>
*/