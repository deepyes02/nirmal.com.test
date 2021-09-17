<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?php echo the_title() . ' - ' . get_bloginfo() ?></title>
  <meta content="" name="description">
  <meta content="aarsha theme, ashura theme, wordpress theme development" name="keywords">

  <!-- Favicons -->
  <link href="<?php echo get_template_directory_uri(); ?>/assets/img/favicon.png" rel="icon">
  <link href="<?php echo get_template_directory_uri(); ?>/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <?php wp_head() ?>
</head>

<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">
      <h1 class="logo me-auto"><a href="index.html">Arsha</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a> -->
      <!-- Navbar -->
      <nav id="navbar" class="navbar">
        <?php echo wp_nav_menu([
          'menu'  => 'primary',
          'container' => false,
          'theme_location'  => 'primary',
          'add_li_class'    => 'dropdown',
        ]); ?>
      </nav>

    </div>
  </header><!-- End Header -->