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
        <ul class="main-menu nav navbar-nav navbar-right">
          <li>
            <router-link to="/" tag="a">Home</router-link>
          </li>
          <li v-show="$route.name == 'Home'">
            <a href="#why-us">About</a>
          </li>
          <li v-show="$route.name == 'Home'">
            <a href="#courses">Events</a>
          </li>
          <li>
            <router-link to="/blog" tag="a">Blog</router-link>
          </li>
          <li>
            <router-link to="/contact" tag="a">Contact</router-link>
          </li>
        </ul>
      </nav>
      <!-- /Navigation -->
    </div>
  </header>
  <!-- /Header -->
</template>

<script>
export default {
  data () {
    return {
      isActive: false
    }
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
