<section id="team" class="team section-bg">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Team</h2>
        <p>Join our ever growing team that lorem ipsum quidem suidem velit belit sellit Quisquam quos quisquam cupiditate.</p>
      </div>
      <?php
      $args = ['post_type' => 'team', 'post_status' => 'publish', 'posts_per_page' => 4, 'order' => 'ASC'];
      $loop = new WP_Query($args);
      if ($loop->have_posts()) {
      ?>
        <div class="row">
          <?php
          while ($loop->have_posts()) {
            $loop->the_post();
            $featured_img_url = get_the_post_thumbnail_url($post, 'full');
            $altImage = get_post_meta(get_post_thumbnail_id($post->ID), '_wp_attachment_image_alt', true);
            $job_position = get_post_meta($post->ID, 'job_position', true);
            $twitter_url = get_post_meta($post->ID, 'twitter_profile_url', true);
            $facebook_url = get_post_meta($post->ID, 'facebook_profile_url', true);
            $instagram_url = get_post_meta($post->ID, 'instagram_profile_url', true);
            $linkedin_url = get_post_meta($post->ID, 'linkedin_profile_url', true);

          ?>
            <div class="col-lg-6 mt-4 mt-lg-0">
              <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="100">
                <div class="pic"><img src="<?php echo $featured_img_url ?>" class="img-fluid" alt=""></div>
                <div class="member-info">
                  <h4><?php echo the_title(); ?></h4>
                  <span><?php echo $job_position ?></span>
                  <p><?php echo the_excerpt() ?></p>
                  <div class="social">
                    <a href="<?php echo $twitter_url ?>"><i class="ri-twitter-fill"></i></a>
                    <a href="<?php echo $facebook_url ?>"><i class="ri-facebook-fill"></i></a>
                    <a href="<?php echo $instagram_url ?>"><i class="ri-instagram-fill"></i></a>
                    <a href="<?php echo $linkedin_url ?>"> <i class="ri-linkedin-box-fill"></i> </a>
                  </div>
                </div>
              </div>
            </div>
          <?php
          }
          ?>
        </div>
      <?php
      } else echo "<h4>Please add some team members that will appear here";
      ?>
    </div>

    </div>
  </section>