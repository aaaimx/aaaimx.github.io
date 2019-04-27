<template>
  <div id="app">
  <!-- Navigation -->
  <nav-app/>

  <!-- Hero -->
  <hero-app/>

  <!-- About us -->
  <about-us/>

  <!-- About us -->
  <sponsors/>

  <!-- About us -->
  <our-team/>

  <!-- Contact -->
  <contact/>

  <!-- Footer -->
  <footer-app/>
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
