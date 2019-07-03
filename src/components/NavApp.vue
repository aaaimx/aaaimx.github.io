<template>
  <nav>
    <!--==========================
    Top Bar
    ============================-->
    <section id="topbar" class="d-none d-lg-block">
      <div class="container clearfix">
        <div class="contact-info float-left">
          <i class="fa fa-envelope-o"></i>
          <a href="mailto:contact@aaaimx.org">contact@aaaimx.org</a>
        </div>
        <div class="social-links float-right">
          <a
            href="https://www.facebook.com/AAAI-Student-Chapter-Yucat%C3%A1n-M%C3%A9xico-408189306626213/"
            class="facebook"
          >
            <i class="fa fa-facebook"></i>
          </a>
          <a href="https://github.com/aaaimx" class="linkedin">
            <i class="fa fa-github"></i>
          </a>
        </div>
      </div>
    </section>

    <!--==========================
      Header
    ============================-->
    <header id="header">
      <div class="container">
        <div id="logo" class="pull-left">
          <!-- Uncomment below if you prefer to use an image logo -->
          <a @click="toHome()">
            <img
              src="static/img/logos/aaaimx-transparent.png"
              style="max-width: 80px; height: auto;"
              alt
              title
            />
          </a>
        </div>

        <nav id="nav-menu-container">
          <ul class="nav-menu">
            <li v-show="$route.name != 'Home'">
              <a @click="toHome()" href="#body">{{ $t('home') }}</a>
            </li>
            <li class="menu-has-children" v-show="$route.name == 'Home'">
              <a href="#">{{ $t('about_us') }}</a>
              <ul>
                <li>
                  <a href="#services">Who Are?</a>
                </li>
                <li>
                  <a href="#clients">Partners & Sponsors</a>
                </li>
                <li>
                  <a href="#">Blog</a>
                </li>
              </ul>
            </li>
            <li class="menu-has-children" v-show="$route.name == 'Home'">
              <a href="#">{{ $t('members') }}</a>
              <ul>
                <li>
                  <a href="#testimonials">Executive Committee</a>
                </li>
                <li>
                  <a href="#team">Board</a>
                </li>
                <li class="menu-has-children">
                  <a>Divisions</a>
                  <ul>
                    <li>
                      <a href="#">Machine Learning</a>
                    </li>
                    <li>
                      <a href="#">Software</a>
                    </li>
                    <li>
                      <a href="#">Robotic & Electronic</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <router-link to="/founders" tag="a">Founders</router-link>
                </li>
              </ul>
            </li>

            <li>
              <router-link to="/blog" tag="a">{{ $t('articles') }}</router-link>
            </li>
            <li>
              <a href="#" @click="toContact()">{{ $t('contact') }}</a>
            </li>
            <li class="menu-has-children d-none d-lg-block d-md-block">
              <a href="#">
                <img v-if="$i18n.locale == 'en'" src="static/img/USA.svg" height="20" alt />
                <img v-else src="static/img/mexico.png" height="20" alt />
              </a>
              <ul>
                <li>
                  <a @click="$i18n.locale = 'en'" href="#">{{ $t('english') }}</a>
                </li>
                <li>
                  <a @click="$i18n.locale = 'es'" href="#">{{ $t('spanish') }}</a>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
        <!-- #nav-menu-container -->
      </div>
    </header>
    <!-- #header -->
  </nav>
</template>

<script>
export default {
  methods: {
    toHome () {
      this.$router.push('/')
      window.location.reload()
    },
    toContact () {
      this.$router.push('/contact')
      window.location.reload()
    }
  }
}
</script>
