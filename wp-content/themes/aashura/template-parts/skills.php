<section id="skills" class="skills">
  <div class="container" data-aos="fade-up">
    <div class="row">
      <div class="col-lg-6 d-flex align-items-center" data-aos="fade-right" data-aos-delay="100">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/skills.png" class="img-fluid" alt="">
      </div>
      <div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left" data-aos-delay="100">
        <h3>How does our skills stack up?</h3>
        <p class="fst-italic">Our skills</p>

        <div class="skills-content">
          <?php
          $args = ['post_type' => 'skills', 'post_status' => 'publish', 'posts_per_page' => 6, 'order' => 'ASC'];
          $loop = new WP_Query($args);

          if ($loop->have_posts()) {
            while ($loop->have_posts()) {
              $loop->the_post();
              $percentage_val = get_post_meta($post->ID, 'skillPercentage', true);
          ?>
              <div class="progress">
                <span class="skill"><?php echo the_title() ?> <i class="val"><?php echo $percentage_val . '%' ?></i></span>
                <div class="progress-bar-wrap">
                  <div class="progress-bar" role="progressbar" aria-valuenow="<?php echo $percentage_val ?>" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
          <?php
            }
          } else {
            echo "Sorry there are no skills defined at the moment.";
          }

          ?>
        </div>

      </div>
    </div>
  </div>
</section>