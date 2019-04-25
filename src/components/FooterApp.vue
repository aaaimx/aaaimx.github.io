<template>
  <footer id="footer" class="section">
    <!-- container -->
    <div class="container">
      <!-- row -->
      <div class="row">
        <!-- footer logo -->
        <div class="col-md-6">
          <div class="footer-logo">
            <a class="logo">
              <img src="static/img/logos/aaai-logo-transpeps.png" alt="logo">
              <img src="static/img/logos/logo01.jpg" alt="logo">
              <img src="static/img/logos/tec.png" alt="logo">
              <img src="static/img/logos/tecnm.png" alt="logo">
              <img src="static/img/logos/cimat.png" alt="logo">
              <img src="static/img/logos/centrogeo.png" alt="logo">
            </a>
          </div>
        </div>
        <!-- footer logo -->

        <!-- footer nav -->
        <div class="col-md-6">
          <nav-app classes="footer-nav"/>
        </div>
        <!-- /footer nav -->
      </div>
      <!-- /row -->

      <!-- row -->
      <div id="bottom-footer" class="row">
        <!-- social -->
        <div class="col-md-4 col-md-push-8">
          <ul class="footer-social">
            <li>
              <a target="_blank" href="https://www.facebook.com/AAAI-student-Chapter-Yucat%C3%A1n-M%C3%A9xico-408189306626213/" class="facebook">
                <i class="fa fa-facebook-f"></i>
              </a>
            </li>
            <li>
              <a target="_blank" href="https://github.com/aaaimx" class="github">
                <i class="fab fa-github"></i>
              </a>
            </li>
            <!--<li>
              <a href="#" class="google-plus">
                <i class="fa fa-google-plus"></i>
              </a>
            </li>
            <li>
              <a href="#" class="instagram">
                <i class="fa fa-instagram"></i>
              </a>
            </li>
            <li>
              <a href="#" class="youtube">
                <i class="fa fa-youtube"></i>
              </a>
            </li>
            <li>
              <a href="#" class="linkedin">
                <i class="fa fa-linkedin"></i>
              </a>
            </li>-->
          </ul>
        </div>
        <!-- /social -->

        <!-- copyright -->
        <div class="col-md-8 col-md-pull-4">
          <div class="footer-copyright">
            <span>
             AAAI México &copy; Copyright 2019. All Rights Reserved. | Powered by <strong><a href="https://github.com/aaaimx">@aaaimx</a></strong>
            </span>
          </div>
        </div>
        <!-- /copyright -->
      </div>
      <!-- row -->
    </div>
    <!-- /container -->
  </footer>
</template>

<script>
import NavApp from '@/components/NavApp'
export default {
  components: {
    NavApp
  }
}
</script>

<style scoped>
.blog-share a.github {
  background-color: #000;
}
.footer-social li a.github {
  background-color: #000;
}
</style>
