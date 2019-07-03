<template>
  <div id="app">
    <!-- Navigation -->
    <nav-app />
    <!-- Hero -->
    <hero-app />
    <router-view />
    <!-- Footer -->
    <footer-app />
    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <!-- Your customer chat code -->
  </div>
</template>

<script>
import NavApp from "@/components/NavApp";
import FooterApp from "@/components/FooterApp";
import HeroApp from "@/components/HeroApp";
import HelloI18n from "@/components/HelloI18n";
import Sponsors from "@/components/Sponsors";
import AboutUs from "@/components/AboutUs";
import OurTeam from "@/components/OurTeam";
import Contact from "@/components/Contact";
export default {
  name: "App",
  components: {
    NavApp,
    AboutUs,
    Sponsors,
    OurTeam,
    Contact,
    HelloI18n,
    HeroApp,
    FooterApp
  }
};
</script>
