<template>
    <div>
    <!-- Hero -->
    <hero-app/>
    <!-- /Hero -->

    <!-- About -->
    <about-us/>
    <!-- /About -->

    <!-- Courses -->
    <!-- <events/> -->
    <!-- /Courses -->

    <sponsors/>

    <!-- Call To Action -->
    <div id="cta" class="section">
      <!-- Backgound Image -->
      <div
        class="bg-image bg-parallax overlay"
        style="background-image:url(./static/img/claudia.jpg)"
      ></div>
      <!-- /Backgound Image -->

      <!-- container -->
      <div class="container">
        <!-- row -->
        <div class="row">
          <div class="col-md-6">
            <h2 style="font-style: italic;" class="white-text">“A year spent in artificial intelligence is enough to make one believe in God.”</h2>
            <p  class="lead white-text">
               —Alan Perlis
            </p>
            <a class="main-button icon-button" href="#">Become a member!</a>
          </div>
        </div>
        <!-- /row -->
      </div>
      <!-- /container -->
    </div>
    <!-- /Call To Action -->

    <!-- Our Team -->
    <our-team/>
    <!-- /Our Team -->

    <!-- Contact CTA -->
    <contact/>
    <!-- /Contact CTA -->

    </div>
</template>

<script>
import HeroApp from '@/components/HeroApp'
import Sponsors from '@/components/Sponsors'
import AboutUs from '@/components/AboutUs'
import OurTeam from '@/components/OurTeam'
import Events from '@/components/Events'
import Contact from '@/components/Contact'
import Clients from '@/components/Clients'
export default {
  name: 'App',
  components: {
    Events,
    Clients,
    AboutUs,
    Sponsors,
    OurTeam,
    Contact,
    HeroApp
  }
}
</script>
