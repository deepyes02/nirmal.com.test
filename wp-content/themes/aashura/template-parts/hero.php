<section id="hero" class="d-flex align-items-center">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
        <h1><?php echo esc_attr(get_option('hero_title')) ?></h1>
        <h2><?php echo esc_attr(get_option('hero_subtitle')) ?></h2>
        <!-- register_setting('aasura_settings_personal', 'hero_get_started_link'); -->
        <!-- register_setting('aasura_settings_personal', 'hero_youtube_link'); -->
        <div class="d-flex justify-content-center justify-content-lg-start">
          <a href="<?php echo esc_attr(get_option('hero_get_started_link')) ?>" class="btn-get-started scrollto">Get Started</a>
          <a href="<?php echo esc_attr(get_option('hero_youtube_link')) ?>" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
        </div>
      </div>
      <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/hero-img.png" class="img-fluid animated" alt="">
      </div>
    </div>
  </div>

</section>