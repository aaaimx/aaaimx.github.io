<template>
  <footer id="footer" class="section">
    <!-- container -->
    <div class="container">
      <!-- row -->
      <div class="row">
        <!-- footer logo -->
        <div class="col-md-6">
          <div class="footer-logo">
            <a class="logo" href="index.html">
              <img src="../static/img/aaai-logo-transpeps.png" alt="logo">
              <img src="../static/img/logo01.jpg" alt="logo">
              <img src="../static/img/tec.png" alt="logo">
              <img src="../static/img/tecnm.png" alt="logo">
              <img src="../static/img/cimat.png" alt="logo">
              <img src="../static/img/centrogeo.png" alt="logo">
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
              <a href="#" class="facebook">
                <i class="fa fa-facebook"></i>
              </a>
            </li>
            <li>
              <a href="#" class="twitter">
                <i class="fa fa-twitter"></i>
              </a>
            </li>
            <li>
              <a href="#" class="github">
                <i class="fa fa-github"></i>
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
             AAAI México &copy; Copyright 2019. All Rights Reserved. | Powered by <strong>AAAI MX Team</strong>
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
