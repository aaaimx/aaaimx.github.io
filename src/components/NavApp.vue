<template>
    <ul :class="classes">
      <li>
        <router-link to="/" tag="a">Home</router-link>
      </li>
      <li v-show="$route.name == 'Home'">
        <a href="#about-us">About</a>
      </li>
      <li v-show="$route.name == 'Home'">
        <a href="#sponsors">Sponsors</a>
      </li>
      <li v-show="$route.name == 'Home'">
        <a href="#team">Team</a>
      </li>
      <!--<li>
        <router-link to="/blog" tag="a">Blog</router-link>
      </li>-->
      <li>
        <router-link to="/contact" tag="a">Contact</router-link>
      </li>
    </ul>
</template>

<script>
export default {
  props: {
    classes: String
  }
}
</script>
