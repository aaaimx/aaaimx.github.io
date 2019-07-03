<template>
  <div id="app">
    <!-- Navigation -->
    <nav-app />
    <!-- Hero -->
    <hero-app />
    <router-view />
    <!-- Footer -->
    <footer-app />

    <a v-if="$route.name != 'Contact'" href="#" class="back-to-top">
      <i class="fa fa-chevron-up"></i>
    </a>
    <div v-else>
      <!-- Load Facebook SDK for JavaScript -->
      <div id="fb-root"></div>
      <!-- Your customer chat code -->
      <div
        class="fb-customerchat"
        attribution="setup_tool"
        logged_out_greeting="Hola, estamos a tu disposición para responder a tus preguntas"
        page_id="408189306626213"
        theme_color="#800040"
      ></div>
    </div>
  </div>
</template>

<script>
import NavApp from '@/components/NavApp'
import FooterApp from '@/components/FooterApp'
import HeroApp from '@/components/HeroApp'
import Sponsors from '@/components/Sponsors'
import AboutUs from '@/components/AboutUs'
import OurTeam from '@/components/OurTeam'
import Contact from '@/components/Contact'
export default {
  name: 'App',
  components: {
    NavApp,
    AboutUs,
    Sponsors,
    OurTeam,
    Contact,
    HeroApp,
    FooterApp
  }
}
</script>
