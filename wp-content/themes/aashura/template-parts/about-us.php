<?php
  //get about us page by id
  $page = get_page_by_path('about');
  // echo $page->post_content;
  ?>
  <section id="about" class="about">
    <div class="container" data-aos="fade-up">
      <div class="section-title">
        <h2>About Us</h2>
      </div>
      <div class="row content">
        <?php echo $page->post_content ?>
      </div>
    </div>
  </section>