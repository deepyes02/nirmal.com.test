<section id="why-us" class="why-us section-bg">
    <div class="container-fluid" data-aos="fade-up">
      <div class="row">
        <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch  order-2 order-lg-1">
          <div class="content">
            <h3>Aashura is a really important <strong>statement we make to the world</strong></h3>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Duis aute irure dolor in reprehenderit.
            </p>
          </div>9
          <?php
          //grab custom post type statements
          $args = ['post_type' => 'statements', 'post_status' => 'publish', 'posts_per_page' => 8, 'order' => 'ASC'];
          $loop = new WP_Query($args);
          if ($loop->have_posts()) {
            // var_dump($loop);
          ?>
            <div class="accordion-list">
              <ul>
                <?php
                $counter = 1;
                while ($loop->have_posts()) {
                  $loop->the_post();
                ?>
                  <li>
                    <a data-bs-toggle="collapse" class="collapse" data-bs-target="#accordion-list-<?php echo $counter ?>"><span><?php echo sprintf("%02d", $counter) ?></span> <?php echo get_the_title() ?> <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                    <div id="accordion-list-<?php echo $counter ?>" class="collapse show" data-bs-parent=".accordion-list">
                      <p>
                        <?php echo the_excerpt() ?>
                      </p>
                    </div>
                  </li>
                <?php
                  $counter = $counter + 1;
                }
                wp_reset_postdata();

                ?>
              </ul>
            </div>
          <?php
          } else {
            echo "Please create some statements, they will appear here";
          }
          ?>
        </div>
        <div class="col-lg-5 align-items-stretch order-1 order-lg-2 img" style='background-image: url("<?php echo get_template_directory_uri() ?>/assets/img/why-us.png");' data-aos="zoom-in" data-aos-delay="150">&nbsp;</div>
      </div>
    </div>
  </section>