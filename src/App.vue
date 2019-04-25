<template>
  <div id="app">
     <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <img src="static/logos/logo-blanco.jpeg" width="50px" alt="logo">
      </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
        aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#sponsors">Sponsors</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#team">Team</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Header -->
  <header class="masthead" id="home">

    <div class="container">
      <!-- Backgound Image -->
      <div class="bg-image bg-parallax overlay" style="background-image:url(./img/header-bg.jpg)"></div>
      <!-- /Backgound Image -->
      <div class="row">
        <div class="col-md-8">
          <h1 class="white-text">
            <br>
            <br>
            <img src="img/aaai-logo-transpeps.png">
            <br>AAAI Student Chapter
            <br>at Yucatán, México
          </h1>
          <p style="color: white;">Mérida Institute of Technology (Instituto Tecnológico de Mérida)</p>
          <br>
        </div>
      </div>
    </div>
  </header>

  <!-- About us -->
  <section id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">About us</h2>
          <hr>
        </div>
      </div>
      <div class="row text-center">
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-flask fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Mission</h4>
          <p class="text-muted">
            Our goal is to promote the knowledge and practice of AI in
            both the ITM and the local
            community, encouraging more students to join and promote research and technological
            developments.
          </p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fas fa-eye fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Vision</h4>
          <p class="text-muted">
            We propose to achieve this through a solid core of
            researchers from both ITM
            and leading research centers such as CIMAT and CentroGeo, who will bring IA knowledge
            to students, in the form of conferences, symposiums, meetings, etc., but mainly, through
            workshops and courses, whose contents will be replicated to future generations of
            students.
          </p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-users fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Community</h4>
          <p class="text-muted">
            We are a community dedicated to increase knowledge and promote greater awareness of
            Artificial Intelligence, located (mainly) in Mérida, Yucatán, México. The headquarters
            of the chapter are located at the Mérida Institute of Technology (Instituto Tecnológico
            de Mérida).
          </p>
        </div>
      </div>
    </div>
  </section>

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
            We are a group of students and researchers from the ITM along with researchers from the Center for
            Mathematical Research (CIMAT) and CentroGeo,
            some of the leading educational and research centers in Yucatán, México.
          </h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">
            <strong>Executive Committee</strong>
          </h2>
          <hr>
        </div>
      </div>
      <div class="row justify-content-center">
        <div v-for="t in team" :key="t.name" class="col-sm-4">
          <div class="team-member">
            <img class="mx-auto rounded-circle" v-if="t.avatar" :src="t.avatar" alt>
            <img class="mx-auto rounded-circle" v-else src="/static/img/avatar.png" alt>
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
      </div>
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">
            <strong>Board</strong>
          </h2>
          <hr>
        </div>
      </div>
      <div class="row">
        <div v-for="t in panel" :key="t.name" class="col-sm-4">
          <div class="team-member">
            <img class="mx-auto rounded-circle" v-if="t.avatar" :src="t.avatar" alt>
            <img class="mx-auto rounded-circle" v-else src="/static/img/avatar.png" alt>
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
      </div>

      <!--<div class="row justify-content-center">
          <button class="btn collapsible" type="button" @click="toggleFounders()">Founders</button>
        </div>-->
    </div>
  </section>

  <!-- Clients -->
  <section class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <a href="http://www.itmerida.mx/" target="_blank" class="sblogos__link">
            <img class="sblogos__img" src="../static/img/tec.png" title="Mérida Institute of Technology">
          </a>
        </div>
        <div class="col-md-3 col-sm-6">
          <a href="https://www.jarkol.com/" target="_blank" class="sblogos__link">
            <img class="sblogos__img" src="../static/img/jarkol-logo.png" title="Jarkol Technologies">
          </a>
        </div>
        <div class="col-md-3 col-sm-6">
          <a href="#" target="_blank" class="sblogos__link">
            <img class="sblogos__img" src="https://drive.google.com/uc?export&id=10F9LnH7Kcr8_9OArthick3vzUP5kG83-"
              title="Indaico">
          </a>

        </div>

        <div class="col-md-3 col-sm-6">
          <a href="#">
            <img class="img-fluid d-block mx-auto" src="img/logos/designmodo.jpg" alt="">
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- Contact -->
  <section id="contact">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">Contact Us</h2>
          <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <form id="contactForm" name="sentMessage" novalidate="novalidate">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <input class="form-control" id="name" type="text" placeholder="Your Name *" required="required"
                    data-validation-required-message="Please enter your name.">
                  <p class="help-block text-danger"></p>
                </div>
                <div class="form-group">
                  <input class="form-control" id="email" type="email" placeholder="Your Email *" required="required"
                    data-validation-required-message="Please enter your email address.">
                  <p class="help-block text-danger"></p>
                </div>
                <div class="form-group">
                  <input class="form-control" id="phone" type="tel" placeholder="Your Phone *" required="required"
                    data-validation-required-message="Please enter your phone number.">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <textarea class="form-control" id="message" placeholder="Your Message *" required="required"
                    data-validation-required-message="Please enter a message."></textarea>
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="clearfix"></div>
              <div class="col-lg-12 text-center">
                <div id="success"></div>
                <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Send
                  Message</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; Your Website 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>
