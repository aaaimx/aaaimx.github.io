<template>
  <div id="courses" class="section">
    <!-- container -->
    <div class="container" v-show="false">
      <!-- row -->
      <div class="row">
        <div class="section-header text-center">
          <h1>Events</h1>
          <hr>
          <p class="lead">Incoming events, workshops and courses</p>
        </div>
      </div>
      <!-- /row -->

      <!-- courses -->
      <div id="courses-wrapper">
        <!-- row -->
        <div class="row">
          <!-- single course -->
          <div v-for="course in events" :key="course.description" class="col-md-3 col-sm-6 col-xs-6">
            <div class="course">
              <a href="#" class="course-img">
                <img :src="course.photo" alt>
                <i class="course-link-icon fa fa-link"></i>
              </a>
              <a class="course-title" href="#">
                {{ course.description }}
              </a>
              <div class="course-details">
                <span class="course-category">{{ course.type }}</span>
                <span class="course-price course-free">{{ course.location }}</span>
              </div>
            </div>
          </div>
        </div>
        <!-- /row -->

        <!-- row -->
        <div class="row">
          <!-- single course -->
          <div v-for="course in courses" :key="course.description" class="col-md-3 col-sm-6 col-xs-6">
            <div class="course">
              <a href="#" class="course-img">
                <img :src="course.photo" alt>
                <i class="course-link-icon fa fa-link"></i>
              </a>
              <a class="course-title" href="#">
                {{ course.description }}
              </a>
              <div class="course-details">
                <span class="course-category">{{ course.type }}</span>
                <span class="course-price course-free">{{ course.location }}</span>
              </div>
            </div>
          </div>
          <!-- /single course -->
        </div>
        <!-- /row -->

        <!-- row -->
        <div class="row">
          <!-- single course -->
          <div v-for="course in breaks" :key="course.description" class="col-md-3 col-sm-6 col-xs-6">
            <div class="course">
              <a href="#" class="course-img">
                <img :src="course.photo" alt>
                <i class="course-link-icon fa fa-link"></i>
              </a>
              <a class="course-title" href="#">
                {{ course.description }}
              </a>
              <div class="course-details">
                <span class="course-category">{{ course.type }}</span>
                <span class="course-price course-free">{{ course.location }}</span>
              </div>
            </div>
          </div>
          <!-- /single course -->
        </div>
        <!-- /row -->
      </div>
      <!-- /courses -->

      <div class="row">
        <div class="center-btn">
          <a class="main-button icon-button" href="#">More Events</a>
        </div>
      </div>
    </div>
    <!-- container -->
  </div>
</template>

<script>
import { events, courses, breaks } from '@/static/js/events'
export default {
  data () {
    return {
      events,
      breaks,
      courses
    }
  },
  created () {
    this.events = this.events.filter()
  },
  computed: {
    sliceArray () {
      return this.events.slice(0, 4)
    }
  }
}
</script>
