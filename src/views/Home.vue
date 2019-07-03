<template>
  <div>
    <main id="main">
      <!--==========================
        About Section
      ============================-->
      <!-- <section id="about" class="wow fadeInUp">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 about-img">
              <img src="static/img/about-img.jpg" alt="">
            </div>
            <div class="col-lg-6 content">
              <h2>Lorem ipsum dolor sit amet, consectetur adipiscing</h2>
              <h3>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                laborum.</h3>
              <ul>
                <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                </li>
                <li><i class="ion-android-checkmark-circle"></i> Duis aute irure dolor in reprehenderit in voluptate
                  velit.</li>
                <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                  Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat
                  nulla pariatur.</li>
              </ul>
            </div>
          </div>
        </div>
      </section>#about-->

      <!--==========================
        Services Section
      ============================-->
      <br />
      <section id="services">
        <div class="container">
          <div class="section-header">
            <h2>About us</h2>
            <p>
              We are a group of students and researchers from the ITM along with researchers from the Center for
              Mathematical Research (CIMAT) and CentroGeo, some of the leading educational and research centers in
              Yucatán, México.
            </p>
          </div>

          <div class="row">
            <div class="col-lg-4">
              <div class="box wow fadeInLeft">
                <div class="icon">
                  <i class="fa fa-flask"></i>
                </div>
                <h4 class="title">
                  <a href>Mission</a>
                </h4>
                <p class="description">
                  Our goal is to promote the knowledge and practice of AI in both the ITM and the
                  local community, encouraging more students to join and promote research and technological
                  developments.
                </p>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="box wow fadeInRight">
                <div class="icon">
                  <i class="fa fa-eye"></i>
                </div>
                <h4 class="title">
                  <a href>Vision</a>
                </h4>
                <p class="description">
                  We propose to achieve this through a solid core of researchers from both ITM and
                  leading research centers such as CIMAT and CentroGeo, who will bring IA knowledge to students, in the
                  form of conferences, symposiums, meetings, etc., but mainly, through workshops and courses, whose
                  contents will be replicated to future generations of students.
                </p>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="box wow fadeInLeft" data-wow-delay="0.2s">
                <div class="icon">
                  <i class="fa fa-users"></i>
                </div>
                <h4 class="title">
                  <a href>Community</a>
                </h4>

                <p class="description">
                  We are a community dedicated to increase knowledge and promote greater awareness
                  of
                  Artificial Intelligence, located (mainly) in Mérida, Yucatán, México. The headquarters of the chapter
                  are located at the Mérida Institute of Technology (Instituto Tecnológico de Mérida).
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- #services -->
      <!--==========================
      Call To Action Section
      ============================-->
      <section
        id="call-to-action"
        class="wow fadeInUp parallax call-to-action"
        style="background: url('./static/img/banners/code-bg.jpg') center / cover fixed;"
      >
        <div class="container">
          <div class="row">
            <div class="col-lg-9 text-center text-lg-left">
              <h2 class="cta-title trn">Alan Turing</h2>
              <p class="cta-text trn">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus animi et,
                libero
                minus laborum atque omnis dolor quam, eaque nam fuga, aliquam cumque reprehenderit blanditiis facere
                consectetur aspernatur. Molestiae, ipsa.
              </p>
            </div>
            <div class="col-lg-3 cta-btn-container text-center">
              <a class="cta-btn align-middle trn" href="blog.html" target="_blank">Discover</a>
            </div>
          </div>
        </div>
      </section>
      <!-- #call-to-action -->

      <Sponsors/>

      <!--==========================
        Our Portfolio Section
      ============================-->
      <!-- <section id="portfolio" class="wow fadeInUp">
        <div class="container">
          <div class="section-header">
            <h2>Our Portfolio</h2>
            <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim
              export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export
              irure minim illum fore</p>
          </div>
        </div>
        <div class="container-fluid">
          <div class="row no-gutters">
            <div class="col-lg-3 col-md-4">
              <div class="portfolio-item wow fadeInUp">
                <a href="img/portfolio/1.jpg" class="portfolio-popup">
                  <img src="static/img/portfolio/1.jpg" alt="">
                  <div class="portfolio-overlay">
                    <div class="portfolio-info">
                      <h2 class="wow fadeInUp">Portfolio Item 1</h2>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-4">
              <div class="portfolio-item wow fadeInUp">
                <a href="img/portfolio/2.jpg" class="portfolio-popup">
                  <img src="static/img/portfolio/2.jpg" alt="">
                  <div class="portfolio-overlay">
                    <div class="portfolio-info">
                      <h2 class="wow fadeInUp">Portfolio Item 2</h2>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-4">
              <div class="portfolio-item wow fadeInUp">
                <a href="img/portfolio/3.jpg" class="portfolio-popup">
                  <img src="static/img/portfolio/3.jpg" alt="">
                  <div class="portfolio-overlay">
                    <div class="portfolio-info">
                      <h2 class="wow fadeInUp">Portfolio Item 3</h2>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-4">
              <div class="portfolio-item wow fadeInUp">
                <a href="img/portfolio/4.jpg" class="portfolio-popup">
                  <img src="static/img/portfolio/4.jpg" alt="">
                  <div class="portfolio-overlay">
                    <div class="portfolio-info">
                      <h2 class="wow fadeInUp">Portfolio Item 4</h2>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-4">
              <div class="portfolio-item wow fadeInUp">
                <a href="img/portfolio/5.jpg" class="portfolio-popup">
                  <img src="static/img/portfolio/5.jpg" alt="">
                  <div class="portfolio-overlay">
                    <div class="portfolio-info">
                      <h2 class="wow fadeInUp">Portfolio Item 5</h2>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-4">
              <div class="portfolio-item wow fadeInUp">
                <a href="img/portfolio/6.jpg" class="portfolio-popup">
                  <img src="static/img/portfolio/6.jpg" alt="">
                  <div class="portfolio-overlay">
                    <div class="portfolio-info">
                      <h2 class="wow fadeInUp">Portfolio Item 6</h2>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-4">
              <div class="portfolio-item wow fadeInUp">
                <a href="img/portfolio/7.jpg" class="portfolio-popup">
                  <img src="static/img/portfolio/7.jpg" alt="">
                  <div class="portfolio-overlay">
                    <div class="portfolio-info">
                      <h2 class="wow fadeInUp">Portfolio Item 7</h2>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-4">
              <div class="portfolio-item wow fadeInUp">
                <a href="img/portfolio/8.jpg" class="portfolio-popup">
                  <img src="static/img/portfolio/8.jpg" alt="">
                  <div class="portfolio-overlay">
                    <div class="portfolio-info">
                      <h2 class="wow fadeInUp">Portfolio Item 8</h2>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </section> #portfolio-->

      <!--==========================
        Testimonials Section
      ============================-->
      <section id="testimonials" class="wow fadeInUp">
        <div class="container">
          <div class="section-header">
            <h2>EXECUTIVE COMMITTEE</h2>
            <p>
              <i>
                We are a group of students and researchers from the ITM along with researchers from the Center for
                Mathematical Research (CIMAT) and CentroGeo, some of the leading educational and research centers in
                Yucatán, México.
              </i>
            </p>
          </div>
          <div class="owl-carousel testimonials-carousel">
            <div class="testimonial-item">
              <div class="pic">
                <img src="static/img/team/commitee/esteban-brito.jpg" alt />
              </div>
              <div class="details">
                <h4>Esteban Brito</h4>
                <span>Machine Learning Division Leader</span>
                <div class="social">
                  <a href>
                    <i class="fa fa-facebook"></i>
                  </a>
                  <a href>
                    <i class="fa fa-github"></i>
                  </a>
                  <a href>
                    <i class="fa fa-linkedin"></i>
                  </a>
                </div>
              </div>
            </div>

            <div class="testimonial-item">
              <div class="pic">
                <img src="static/img/team/commitee/raul-novelo.jpeg" alt />
              </div>
              <div class="details">
                <h4>Raúl Novelo</h4>
                <span>Software Division Leader</span>
                <div class="social">
                  <a href>
                    <i class="fa fa-facebook"></i>
                  </a>
                  <a href>
                    <i class="fa fa-github"></i>
                  </a>
                  <a href>
                    <i class="fa fa-linkedin"></i>
                  </a>
                </div>
              </div>
            </div>

            <div class="testimonial-item">
              <div class="pic">
                <img src="static/img/team/commitee/humberto-sarabia.jpg" alt />
              </div>
              <div class="details">
                <h4>Humberto Sarabia</h4>
                <span>Robotic/Electronic Division Leader</span>
                <div class="social">
                  <a href>
                    <i class="fa fa-facebook"></i>
                  </a>
                  <a href>
                    <i class="fa fa-github"></i>
                  </a>
                  <a href>
                    <i class="fa fa-linkedin"></i>
                  </a>
                </div>
              </div>
            </div>

            <div class="testimonial-item">
              <div class="pic">
                <img src="static/img/team/commitee/fernando-herrera.jpg" alt />
              </div>
              <div class="details">
                <h4>Fernando Herrera</h4>
                <span>Applied Mathematics Division Leader</span>
                <div class="social">
                  <a href>
                    <i class="fa fa-facebook"></i>
                  </a>
                  <a href>
                    <i class="fa fa-github"></i>
                  </a>
                  <a href>
                    <i class="fa fa-linkedin"></i>
                  </a>
                </div>
              </div>
            </div>

            <div class="testimonial-item">
              <div class="pic">
                <img src="static/img/team/commitee/adolfo-alvarez.jpg" alt />
              </div>
              <div class="details">
                <h4>Adolfo Álvarez</h4>
                <span>EC Member</span>
                <div class="social">
                  <a href>
                    <i class="fa fa-facebook"></i>
                  </a>
                  <a href>
                    <i class="fa fa-github"></i>
                  </a>
                  <a href>
                    <i class="fa fa-linkedin"></i>
                  </a>
                </div>
              </div>
            </div>

            <div class="testimonial-item">
              <div class="pic">
                <img src="static/img/team/commitee/paul-mena.jpg" alt />
              </div>
              <div class="details">
                <h4>Paul Mena</h4>
                <span>EC Member</span>
                <div class="social">
                  <a href>
                    <i class="fa fa-facebook"></i>
                  </a>
                  <a href>
                    <i class="fa fa-github"></i>
                  </a>
                  <a href>
                    <i class="fa fa-linkedin"></i>
                  </a>
                </div>
              </div>
            </div>

            <div class="testimonial-item">
              <div class="pic">
                <img src="static/img/team/commitee/juan-lopez.jpg" alt />
              </div>
              <div class="details">
                <h4>Juan López</h4>
                <span>EC Member</span>
                <div class="social">
                  <a href>
                    <i class="fa fa-facebook"></i>
                  </a>
                  <a href>
                    <i class="fa fa-github"></i>
                  </a>
                  <a href>
                    <i class="fa fa-linkedin"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- #testimonials -->

      <!--==========================
        Our Team Section
      ============================-->
      <section id="team" class="wow fadeInUp">
        <div class="container">
          <div class="section-header">
            <h2>BOARD</h2>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-6">
              <div class="member">
                <div class="pic">
                  <img src="static/img/team/board/dr-juan-carlos.jpg" alt />
                </div>
                <div class="details">
                  <h4>Juan Carlos Valdiviezo Navarro</h4>
                  <span>Co-Chair / CentroGeo Researcher</span>
                  <div class="social">
                    <a href>
                      <i class="fab fa-researchgate"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6">
              <div class="member">
                <div class="pic">
                  <img src="static/img/team/board/dr-mauricio-orozco.jpg" alt />
                </div>
                <div class="details">
                  <h4>Mauricio Orozco</h4>
                  <span>Chair / ITM Researcher</span>
                  <div class="social">
                    <a href>
                      <i class="fab fa-researchgate"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6">
              <div class="member">
                <div class="pic">
                  <img src="static/img/team/board/dr-joel-trejo.jpg" alt />
                </div>
                <div class="details">
                  <h4>Juan Carlos Trejo</h4>
                  <span>Secretary / CIMAT Researcher</span>
                  <div class="social">
                    <a href>
                      <i class="fab fa-researchgate"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- #team -->
      <!--==========================
      Call To Action Section
      ============================-->
      <section id="call-to-action" class="wow fadeInUp call-to-action">
        <div class="container">
          <div class="row">
            <div class="col-lg-9 text-center text-lg-left">
              <h2 class="cta-title trn">Lorem ipsum</h2>
              <p class="cta-text trn">
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium est
                veritatis
                quaerat. Obcaecati et quae non sunt eveniet voluptatibus, voluptatem consectetur incidunt reprehenderit
                libero quis nisi similique iusto possimus? Nam?
              </p>
              <p class="cta-text trn">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Esse, optio minus
                aperiam
                enim exercitationem, amet perferendis natus earum ipsa neque, explicabo quod inventore dignissimos
                consequatur dolores iusto dolorum voluptatem? Dignissimos.
              </p>
            </div>
            <div class="col-lg-3 cta-btn-container text-center">
              <a class="cta-btn align-middle trn" target="_blank" href="contact.html">Get in Touch</a>
            </div>
          </div>
        </div>
      </section>
      <!-- #call-to-action -->
    </main>

    <!-- Contact -->
    <contact />
  </div>
</template>

<script>
import Contact from '@/components/Contact'
import Sponsors from '@/components/Sponsors'
export default {
  name: 'Home',
  components: {
    Sponsors,
    Contact
  }
}
</script>
