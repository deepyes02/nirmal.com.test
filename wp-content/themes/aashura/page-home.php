<?php get_header(); ?>
<!-- ======= Hero Section ======= -->
<?php get_template_part('template-parts/hero')?>
<!-- End Hero -->
<main id="main">
  <!-- ======= Cliens Section ======= -->
  <?php get_template_part('template-parts/clients')?>
  <!-- End Cliens Section -->
  
  <?php get_template_part('template-parts/about-us')?>
 <!-- ======= About Us Section ======= -->
 
  <!-- End About Us Section -->

  <!-- ======= Why Us Section ======= -->
  <?php get_template_part('template-parts/why-us')?>
  <!-- End Why Us Section -->

  <!-- ======= Skills Section ======= -->
  <section id="skills" class="skills">
    <div class="container" data-aos="fade-up">
      <!--  -->
      <div class="row">
        <div class="col-lg-6 d-flex align-items-center" data-aos="fade-right" data-aos-delay="100">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/skills.png" class="img-fluid" alt="">
        </div>
        <div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left" data-aos-delay="100">
          <h3>Voluptatem dignissimos provident quasi corporis voluptates</h3>
          <p class="fst-italic">
            Our skills
          </p>

          <div class="skills-content">

            <div class="progress">
              <span class="skill">HTML <i class="val">100%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">CSS <i class="val">90%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                </div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">JavaScript <i class="val">75%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                </div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">Photoshop <i class="val">55%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100">
                </div>
              </div>
            </div>

          </div>

        </div>
      </div>
    </div>
  </section>
  <!-- End Skills Section -->
  <!-- ======= Services Section ======= -->
  <section id="services" class="services section-bg">
    <div class="container" data-aos="fade-up">
      <div class="section-title">
        <h2>Services</h2>
        <p> Our services are as follows. Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
          consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
          in iste officiis commodi quidem hic quas. And they all liked it.</p>
      </div>
      <?php
      $args = ['post_type' => 'services', 'post_status' => 'publish', 'posts_per_page' => 8, 'order' => 'ASC'];
      $loop = new WP_Query($args);
      if ($loop->have_posts()) {
      ?>
        <div class="row">
          <?php
          while ($loop->have_posts()) {
            $loop->the_post();
            $logoiconText = get_post_meta($post->ID, 'iconcode', true);
          ?>
            <div class="col-xl-3 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
              <div class="icon-box">
                <div class="icon"><i class="<?php echo $logoiconText ?>"></i></div>
                <h4><a href="<?php echo the_permalink($post) ?>"><?php echo the_title() ?></a></h4>
                <p><?php echo the_excerpt() ?></p>
              </div>
            </div>
          <?php
          }
          ?>
        </div>
      <?php
      } else {
        echo "Sorry there are no posts";
      }
      ?>
    </div>
  </section>
  
  <!-- End Services Section -->

  <!-- ======= Cta Section ======= -->
  <section id="cta" class="cta">
    <div class="container" data-aos="zoom-in">

      <div class="row">
        <div class="col-lg-9 text-center text-lg-start">
          <h3>Call To Action</h3>
          <p> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
            laborum.</p>
        </div>
        <div class="col-lg-3 cta-btn-container text-center">
          <a class="cta-btn align-middle" href="#">Call To Action</a>
        </div>
      </div>

    </div>
  </section>
  
  <!-- End Cta Section -->

  <!-- ======= Portfolio Section ======= -->
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
  </section><!-- End Portfolio Section -->

  <!-- ======= Team Section ======= -->
  <section id="team" class="team section-bg">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Team</h2>
        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
          consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
          in iste officiis commodi quidem hic quas.</p>
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
  </section><!-- End Team Section -->

  <!-- ======= Pricing Section ======= -->
  <section id="pricing" class="pricing">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Pricing</h2>
        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
          consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
          in iste officiis commodi quidem hic quas.</p>
      </div>

      <div class="row">

        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
          <div class="box">
            <h3>Free Plan</h3>
            <h4><sup>$</sup>0<span>per month</span></h4>
            <ul>
              <li><i class="bx bx-check"></i> Quam adipiscing vitae proin</li>
              <li><i class="bx bx-check"></i> Nec feugiat nisl pretium</li>
              <li><i class="bx bx-check"></i> Nulla at volutpat diam uteera</li>
              <li class="na"><i class="bx bx-x"></i> <span>Pharetra massa massa ultricies</span></li>
              <li class="na"><i class="bx bx-x"></i> <span>Massa ultricies mi quis hendrerit</span></li>
            </ul>
            <a href="#" class="buy-btn">Get Started</a>
          </div>
        </div>

        <div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="200">
          <div class="box featured">
            <h3>Business Plan</h3>
            <h4><sup>$</sup>29<span>per month</span></h4>
            <ul>
              <li><i class="bx bx-check"></i> Quam adipiscing vitae proin</li>
              <li><i class="bx bx-check"></i> Nec feugiat nisl pretium</li>
              <li><i class="bx bx-check"></i> Nulla at volutpat diam uteera</li>
              <li><i class="bx bx-check"></i> Pharetra massa massa ultricies</li>
              <li><i class="bx bx-check"></i> Massa ultricies mi quis hendrerit</li>
            </ul>
            <a href="#" class="buy-btn">Get Started</a>
          </div>
        </div>

        <div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="300">
          <div class="box">
            <h3>Developer Plan</h3>
            <h4><sup>$</sup>49<span>per month</span></h4>
            <ul>
              <li><i class="bx bx-check"></i> Quam adipiscing vitae proin</li>
              <li><i class="bx bx-check"></i> Nec feugiat nisl pretium</li>
              <li><i class="bx bx-check"></i> Nulla at volutpat diam uteera</li>
              <li><i class="bx bx-check"></i> Pharetra massa massa ultricies</li>
              <li><i class="bx bx-check"></i> Massa ultricies mi quis hendrerit</li>
            </ul>
            <a href="#" class="buy-btn">Get Started</a>
          </div>
        </div>

      </div>

    </div>
  </section><!-- End Pricing Section -->

  <!-- ======= Frequently Asked Questions Section ======= -->
  <section id="faq" class="faq section-bg">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Frequently Asked Questions</h2>
        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
          consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
          in iste officiis commodi quidem hic quas.</p>
      </div>
      <?php
      $args = ['post_type' => 'faqs', 'post_status' => 'publish', 'posts_per_page' => 12, 'order' => 'ASC'];
      $loop = new WP_Query($args);
      if ($loop->have_posts()) {
        ?>
        <div class="faq-list">
          <ul>
        <?php
        //code
        $counter = 1;
        while ($loop->have_posts()){
          $loop->the_post();
          ?>
          <li data-aos="fade-up" data-aos-delay="100">
            <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" class="collapse" data-bs-target="#faq-list-<?php echo $counter?>"><?php echo the_title()?> <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
            <div id="faq-list-<?php echo $counter?>" class="collapse show" data-bs-parent=".faq-list">
              <p><?php echo the_excerpt() ?></p>
            </div>
          </li>
          <?php
          $counter++;
        }?></ul></div>
      <?php
      } else echo "Sorry there are no FAQs available now";
      ?>
      </div>

    </div>
  </section><!-- End Frequently Asked Questions Section -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Contact</h2>
        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
          consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
          in iste officiis commodi quidem hic quas.</p>
      </div>

      <div class="row">

        <div class="col-lg-5 d-flex align-items-stretch">
          <div class="info">
            <div class="address">
              <i class="bi bi-geo-alt"></i>
              <h4>Location:</h4>
              <p>A108 Adam Street, New York, NY 535022</p>
            </div>

            <div class="email">
              <i class="bi bi-envelope"></i>
              <h4>Email:</h4>
              <p>info@example.com</p>
            </div>

            <div class="phone">
              <i class="bi bi-phone"></i>
              <h4>Call:</h4>
              <p>+1 5589 55488 55s</p>
            </div>

            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
          </div>

        </div>

        <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
          <?php $formLocation = get_template_directory_uri() . '/forms/contact.php';
          ?>
          <form action="<?php echo $formLocation ?>" method="post" role="form" class="php-email-form">
            <div class="row">
              <div class="form-group col-md-6">
                <label for="name">Your Name</label>
                <input type="text" name="name" class="form-control" id="name" required>
              </div>
              <div class="form-group col-md-6">
                <label for="name">Your Email</label>
                <input type="email" class="form-control" name="email" id="email" required>
              </div>
            </div>
            <div class="form-group">
              <label for="name">Subject</label>
              <input type="text" class="form-control" name="subject" id="subject" required>
            </div>
            <div class="form-group">
              <label for="name">Message</label>
              <textarea class="form-control" name="message" rows="10" required></textarea>
            </div>
            <div class="my-3">
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your message has been sent. Thank you!</div>
            </div>
            <div class="text-center"><button type="submit">Send Message</button></div>
          </form>
        </div>

      </div>

    </div>
  </section><!-- End Contact Section -->

</main><!-- End #main -->
<?php get_footer(); ?>