
// Create VueI18n instance with options
const i18n = new VueI18n({
  locale: 'en',
  messages
})

// Create a Vue instance with `i18n` option
new Vue({
  i18n,
  created() {
    var url_string = window.location.href
    var url = new URL(url_string);
    var c = url.searchParams.get("hello");
    console.log(url);
  },
  methods: {
    changeLang(lang) {
      this.$i18n.locale = lang
    }
  }
}).$mount('#app')
