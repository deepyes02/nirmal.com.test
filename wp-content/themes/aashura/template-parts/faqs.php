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
            while ($loop->have_posts()) {
              $loop->the_post();
            ?>
              <li data-aos="fade-up" data-aos-delay="100">
                <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" class="collapse" data-bs-target="#faq-list-<?php echo $counter ?>"><?php echo the_title() ?> <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                <div id="faq-list-<?php echo $counter ?>" class="collapse show" data-bs-parent=".faq-list">
                  <p><?php echo the_excerpt() ?></p>
                </div>
              </li>
            <?php
              $counter++;
            } ?>
          </ul>
        </div>
      <?php
      } else echo "Sorry there are no FAQs available now";
      ?>
    </div>

    </div>
  </section>