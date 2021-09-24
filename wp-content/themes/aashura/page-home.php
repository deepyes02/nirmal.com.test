<?php get_header(); ?>
<!-- ======= Hero Section ======= -->
<?php get_template_part('template-parts/hero') ?>
<!-- End Hero -->
<main id="main">
  <!-- ======= Cliens Section ======= -->
  <?php get_template_part('template-parts/clients') ?>
  <!-- End Cliens Section -->
  <?php get_template_part('template-parts/about-us') ?>
  <!-- ======= About Us Section ======= -->
  <!-- End About Us Section -->
  <!-- ======= Why Us Section ======= -->
  <?php get_template_part('template-parts/why-us') ?>
  <!-- End Why Us Section -->
  <!-- ======= Skills Section ======= -->
  <?php get_template_part('template-parts/skills')?>
  <!-- End Skills Section -->
  <!-- ======= Services Section ======= -->
<?php get_template_part('template-parts', 'services')?>

  <!-- End Services Section -->

  <!-- ======= Cta Section ======= -->
<?php get_template_part('template-parts/calltoaction')?>

  <!-- End Cta Section -->

  <!-- ======= Portfolio Section ======= -->
  <?php get_template_part('template-parts/portfolio')?>
<!-- End Portfolio Section -->

  <!-- ======= Team Section ======= -->
  <?php get_template_part('template-parts/team')?>
  <!-- End Team Section -->

  <!-- ======= Pricing Section ======= -->
	<?php get_template_part('template-parts/pricing')?>
  <!-- End Pricing Section -->

  <!-- ======= Frequently Asked Questions Section ======= -->
<?php get_template_part('template-parts/faqs')?>
  <!-- End Frequently Asked Questions Section -->

  <!-- ======= Contact Section ======= -->
  <?php get_template_part('template-parts/contact')?>
  <!-- End Contact Section -->

</main><!-- End #main -->
<?php get_footer(); ?>