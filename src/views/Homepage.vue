<template>
    <div>
    <!-- Hero -->
    <hero-app/>
    <!-- /Hero -->

    <!-- About -->
    <about-us/>
    <!-- /About -->

    <sponsors/>

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
import Contact from '@/components/Contact'
export default {
  name: 'App',
  components: {
    AboutUs,
    Sponsors,
    OurTeam,
    Contact,
    HeroApp
  }
}
</script>

<style>
section {
  padding-bottom: 0px !important;
}
</style>
