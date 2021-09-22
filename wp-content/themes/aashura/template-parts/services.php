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