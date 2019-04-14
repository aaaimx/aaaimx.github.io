// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'

// Bootstrap
import './static/css/bootstrap.min.css'

// Font Awesome Icon
import './static/css/font-awesome.min.css'

// Custom stylesheet
import './static/css/style.css'

// JQuery Plugins
import './static/js/jquery.min.js'
// import './static/js/google-map.js'
import './static/js/bootstrap.min.js'
import './static/js/main.js'

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
