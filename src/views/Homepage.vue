<template>
    <div>
        <!-- Hero -->
    <hero-app/>
    <!-- /Hero -->

    <!-- About -->
    <about-us/>
    <!-- /About -->

    <!-- Courses -->
    <events/>
    <!-- /Courses -->

    <!-- Call To Action -->
    <div id="cta" class="section">
      <!-- Backgound Image -->
      <div
        class="bg-image bg-parallax overlay"
        style="background-image:url(../static/img/claudia.jpg)"
      ></div>
      <!-- /Backgound Image -->

      <!-- container -->
      <div class="container">
        <!-- row -->
        <div class="row">
          <div class="col-md-6">
            <h2 class="white-text">Ceteros fuisset mei no, soleat epicurei adipiscing ne vis.</h2>
            <p class="lead white-text">
              Ceteros fuisset mei no, soleat epicurei adipiscing ne vis. Et his suas
              veniam
              nominati.
            </p>
            <a class="main-button icon-button" href="#">Get Started!</a>
          </div>
        </div>
        <!-- /row -->
      </div>
      <!-- /container -->
    </div>
    <!-- /Call To Action -->

    <!-- Why us -->
    <div id="why-us" class="section">
      <!-- container -->
      <div class="container">
        <!-- row -->
        <div class="row">
          <div class="section-header text-center">
            <h1>
              <strong>OUR TEAM</strong>
            </h1>
            <p class="lead">
              We are a group of students and researchers from the Center for Mathematical Research
              (CIMAT) and CentroGeo,
              two of the leading research centers in Yucatan, Mexico.
            </p>
          </div>

          <!-- feature -->
          <div class="col-md-4">
            <div class="feature">
              <i class="feature-icon fa fa-flask"></i>
              <div class="feature-content">
                <h4>Online Courses</h4>
                <p>Ceteros fuisset mei no, soleat epicurei adipiscing ne vis. Et his suas veniam nominati.</p>
              </div>
            </div>
          </div>
          <!-- /feature -->

          <!-- feature -->
          <div class="col-md-4">
            <div class="feature">
              <i class="feature-icon fa fa-users"></i>
              <div class="feature-content">
                <h4>Expert Teachers</h4>
                <p>Ceteros fuisset mei no, soleat epicurei adipiscing ne vis. Et his suas veniam nominati.</p>
              </div>
            </div>
          </div>
          <!-- /feature -->

          <!-- feature -->
          <div class="col-md-4">
            <div class="feature">
              <i class="feature-icon fa fa-comments"></i>
              <div class="feature-content">
                <h4>Community</h4>
                <p>Ceteros fuisset mei no, soleat epicurei adipiscing ne vis. Et his suas veniam nominati.</p>
              </div>
            </div>
          </div>
          <!-- /feature -->
        </div>
        <!-- /row -->

        <hr class="section-hr">

        <!-- row -->
        <div class="row">
          <div class="col-md-6">
            <h3>Persius imperdiet incorrupte et qui, munere nusquam et nec.</h3>
            <p class="lead">Libris vivendo eloquentiam ex ius, nec id splendide abhorreant.</p>
            <p>
              No vel facete sententiae, quodsi dolores no quo, pri ex tamquam interesset necessitatibus. Te
              denique
              cotidieque delicatissimi sed. Eu doming epicurei duo. Sit ea perfecto deseruisse theophrastus.
              At sed malis
              hendrerit, elitr deseruisse in sit, sit ei facilisi mediocrem.
            </p>
          </div>

          <div class="col-md-5 col-md-offset-1">
            <a class="about-video" href="#">
              <img src="../static/img/about-video.jpg" alt>
              <i class="play-icon fa fa-play"></i>
            </a>
          </div>
        </div>
        <!-- /row -->
      </div>
      <!-- /container -->
    </div>
    <!-- /Why us -->

    <!-- Contact CTA -->
    <contact/>
    <!-- /Contact CTA -->

    </div>
</template>

<script>
import HeroApp from '@/components/HeroApp'
import AboutUs from '@/components/AboutUs'
import Events from '@/components/Events'
import Contact from '@/components/Contact'
export default {
  name: 'App',
  components: {
    Events,
    AboutUs,
    Contact,
    HeroApp
  }
}
</script>
