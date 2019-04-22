<template>
  <!-- Team -->
  <section class="bg-light" id="team">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">
            <strong>Our Team</strong>
          </h2>
          <hr>
          <h3 class="section-subheading text-muted">
            We are a group of students and researchers from the Center for Mathematical Research
            (CIMAT) and CentroGeo,
            two of the leading research centers in Yucatán, México.
          </h3>
        </div>
      </div>
      <div class="row">
        <div v-for="t in team" :key="t.name" class="col-sm-4">
          <div class="team-member">
            <img class="mx-auto rounded-circle" v-if="t.avatar" :src="t.avatar" alt>
            <img class="mx-auto rounded-circle" v-else src="../static/img/avatar.png" alt>
            <h4>{{ t.name }}</h4>
            <p class="text-muted">{{ t.description }}</p>
            <ul class="list-inline social-buttons">
              <li v-if="t.social.twitter" class="list-inline-item">
                <a target="_blank" :href="t.social.twitter">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li v-if="t.social.fb" class="list-inline-item">
                <a target="_blank" :href="t.social.fb">
                  <i class="fa fa-facebook-f"></i>
                </a>
              </li>
              <li v-if="t.social.in" class="list-inline-item">
                <a target="_blank" :href="t.social.in">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </li>
              <li v-if="t.social.github" class="list-inline-item">
                <a target="_blank" :href="t.social.github">
                  <i class="fab fa-github"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div v-for="f in founders" :key="f.name" class="col-sm-4 content">
          <div class="team-member">
            <img class="mx-auto rounded-circle" v-if="f.avatar" :src="f.avatar" alt>
            <img class="mx-auto rounded-circle" v-else src="../static/img/avatar.png" alt>
            <h4>{{ f.name }}</h4>
            <p class="text-muted">{{ f.description }}</p>
            <ul class="list-inline social-buttons">
              <li v-if="f.social.twitter" class="list-inline-item">
                <a target="_blank" :href="f.social.twitter">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li v-if="f.social.fb" class="list-inline-item">
                <a target="_blank" :href="f.social.fb">
                  <i class="fa fa-facebook-f"></i>
                </a>
              </li>
              <li v-if="f.social.in" class="list-inline-item">
                <a target="_blank" :href="f.social.in">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </li>
              <li v-if="f.social.github" class="list-inline-item">
                <a target="_blank" :href="f.social.github">
                  <i class="fab fa-github"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <!--<div class="row justify-content-center">

        <button class="btn collapsible" type="button" @click="toggleFounders()">Founders</button>
      </div>-->

    </div>
  </section>
</template>

<script>
import { team, founders } from '../static/js/members'
export default {
  data () {
    return {
      team,
      founders
    }
  },
  methods: {
    toggleFounders () {
      var coll = document.getElementsByClassName('content')
      for (let el of coll) {
        el.style.display === 'block' ? el.style.display = 'none' : el.style.display = 'block'
      }
    }
  }
}
</script>

<style scoped>
@import url("../static/css/agency.min.css");
@import url("../static/vendor/bootstrap/css/bootstrap.min.css");
@import url("https://fonts.googleapis.com/css?family=Montserrat:400,700");
@import url("https://fonts.googleapis.com/css?family=Kaushan+Script");
@import url("https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic");
@import url("https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700");

/* Style the button that is used to open and close the collapsible content */
.collapsible {
  background-color: #800040;
  color: #fff;
  cursor: pointer;
  padding: 10px;
  font-size: 13px;
  border: none;
  outline: none;
}

/* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
.active, .collapsible:hover {
  background-color: #d9ad26;
}

/* Style the collapsible content. Note: hidden by default */
.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  transition: all 0.25s ease-out;
}
</style>
