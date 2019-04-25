// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'

// Custom stylesheet
import './static/css/style.css'
import './static/css/font-awesome.min.css'

// JQuery Plugins
import './static/js/main.js'
import './static/js/scroll-offset.js'

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
