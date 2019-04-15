<template>
  <!-- Header -->
  <header id="header"
    :class="{'transparent-nav': $route.name == 'Home'}">
    <div class="container">
      <div class="navbar-header">
        <!-- Logo -->
        <div class="navbar-brand">
          <router-link class="logo" to="/" tag="a">
            <img src="../static/img/logo01.jpg" alt="logo">
          </router-link>
        </div>
        <!-- /Logo -->

        <!-- Mobile toggle -->
        <button @click="myFilter" class="navbar-toggle">
          <span></span>
        </button>
        <!-- /Mobile toggle -->
      </div>

      <!-- Navigation -->
      <nav id="nav">
        <nav-app classes="main-menu nav navbar-nav navbar-right"/>
      </nav>
      <!-- /Navigation -->
    </div>
  </header>
  <!-- /Header -->
</template>

<script>
import NavApp from '@/components/NavApp'
export default {
  data () {
    return {
      isActive: false
    }
  },
  components: {
    NavApp
  },
  methods: {
    myFilter () {
      var d = document.getElementById('header')
      this.isActive ? d.classList.remove('nav-collapse') : d.classList.add('nav-collapse')
      this.isActive = !this.isActive
    }
  }
}
</script>
