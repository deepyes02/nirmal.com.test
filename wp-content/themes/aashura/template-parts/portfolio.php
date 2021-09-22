<section id="portfolio" class="portfolio">
    <div class="container" data-aos="fade-up">
      <div class="section-title">
        <h2>Portfolio</h2>
        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
          consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
          in iste officiis commodi quidem hic quas.</p>
      </div>

      <ul id="portfolio-flters" class="d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
        <li data-filter="*" class="filter-active">All</li>
        <li data-filter=".filter-app">App</li>
        <li data-filter=".filter-card">Card</li>
        <li data-filter=".filter-web">Web</li>
      </ul>
      <?php
      $args = ['post_type' => 'portfolio', 'post_status' => 'publish', 'posts_per_page' => 12, 'order' => 'ASC'];
      $loop = new WP_Query($args);
      if ($loop->have_posts()) {
      ?>
        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">
          <?php
          while ($loop->have_posts()) {
            $loop->the_post();
            $terms = get_the_terms($post, 'type');
            $featured_img_url = get_the_post_thumbnail_url($post, 'full');
            $altImage = get_post_meta(get_post_thumbnail_id($post->ID), '_wp_attachment_image_alt', true);
            // var_dump($featured_img_url);
            // var_dump ($terms[0]->name);
          ?>
            <div class="col-lg-4 col-md-6 portfolio-item filter-<?php echo $terms[0]->name ?>">
              <div class="portfolio-img"><img src="<?php echo $featured_img_url ?>" class="img-fluid" alt="<?php echo $altImage ?>"></div>
              <div class="portfolio-info">
                <h4><?php echo the_title() ?></h4>
                <p><?php echo $terms[0]->name ?></p>
                <a href="<?php echo get_template_directory_uri() ?>/assets/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          <?php
          }
          ?>
        </div>
      <?php
      } else {
        echo "<h4>Sorry no data available</h4>";
      }
      wp_reset_postdata();
      ?>
    </div>
  </section>