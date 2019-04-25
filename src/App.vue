<template>
  <div id="app">
    <!--<img src="./assets/logo.png">-->
    <header-app/>

    <router-view/>
    <!-- Footer -->
    <footer-app/>
    <!-- /Footer -->
  </div>
</template>

<script>
import HeaderApp from './components/HeaderApp'
import FooterApp from './components/FooterApp'
export default {
  name: 'App',
  components: {
    FooterApp,
    HeaderApp
  }
}
</script>
