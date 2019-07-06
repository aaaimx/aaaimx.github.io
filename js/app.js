
// Create VueI18n instance with options
const i18n = new VueI18n({
  locale: 'en',
  messages
})

// Create a Vue instance with `i18n` option
new Vue({
  i18n,
  data: {
    posts: []
  },
  created() {
    axios('https://jsonplaceholder.typicode.com/photos').then(response => {
      this.posts = response.data
      console.log(response)
    }, err => {
      console.log(err)
    })
    var url_string = window.location.href
    var url = new URL(url_string);
    var c = url.searchParams.get("hello");
    console.log(url);
  },
  methods: {
    changeLang(lang) {
      this.$i18n.locale = lang
    }
  },
  computed: {
    last() {
      return this.posts.slice(0, 5)
    }
  }
}).$mount('#app')
