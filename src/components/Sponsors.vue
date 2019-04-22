<template>
  <section id="sponsors">
    <div class="container section">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h1 class="section-heading text-uppercase">
            <strong>Sponsors</strong>
          </h1>
          <hr>
          <h3 class="section-subheading text-muted"></h3>
        </div>
      </div>
      <div class="sblogos" data-random="true" data-interval="1500" data-keep-alive="4000">
        <div class="sblogos__row">
          <div class="sblogos__col">
            <a href="http://www.itmerida.mx/" class="sblogos__link">
              <img class="sblogos__img" src="../static/img/tec.png" title="Mérida Institute of Technology">
            </a>
          </div>
          <div class="sblogos__col">
            <a href="https://www.jarkol.com/" class="sblogos__link">
              <img
                class="sblogos__img"
                src="https://drive.google.com/uc?export=view&id=10Bt4oW2mgumGoLntEHsBtL_xHg6yhzpv"
                title="Jarkol Technologies"
              >
            </a>
          </div>
          <div class="sblogos__col">
            <a href="https://www.centrogeo.org.mx/" class="sblogos__link">
              <img
                class="sblogos__img"
                src="../static/img/centrogeo.png"
                title="CentroGEO"
                alt="CentroGEO"
              >
            </a>
          </div>
          <div class="sblogos__col">
            <a href="https://www.cimat.mx/" class="sblogos__link">
              <img class="sblogos__img" src="../static/img/cimat.png" title="CIMAT">
            </a>
          </div>
          <div class="sblogos__col">
            <a href="#" class="sblogos__link">
              <img class="sblogos__img" src="../static/img/logo01.jpg" title="AAAI MX">
            </a>
          </div>
          <div class="sblogos__col">
            <a href="https://www.aaai.org/" class="sblogos__link">
              <img class="sblogos__img" src="../static/img/aaai-logo-transpeps.png" title="AAAI">
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>

.sblogos {
  height: 150px; /* Change this value to make logos smaller / bigger */
  padding-left: 15px;
  padding-right: 15px;
  text-align: center;
}

@media (max-width: 539px) {
  .sblogos {
    height: 300px;
  }
}

.sblogos__row {
  margin-left: -15px;
  margin-right: -15px;
}

.sblogos__col {
  float: left;
}

.sblogos__link {
  padding: 30px 15px;
}

/* --- */

.sblogos__col {
  width: 50%;
}
@media (min-width: 540px) {
  .sblogos__col {
    width: 25%;
  }
}
@media (min-width: 768px) {
  .sblogos__col {
    width: 20%;
  }
}
@media (min-width: 992px) {
  .sblogos__col {
    width: 20%;
  }
}
@media (min-width: 1200px) {
  .sblogos__col {
    width: 16.6667%;
  }
}

/* --- */

@media (max-width: 539px) {
  .sblogos__col:nth-child(1n + 5) {
    display: none;
  }
}
@media (min-width: 540px) and (max-width: 767px) {
  .sblogos__col:nth-child(1n + 5) {
    display: none;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .sblogos__col:nth-child(1n + 6) {
    display: none;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .sblogos__col:nth-child(1n + 6) {
    display: none;
  }
}
@media (min-width: 1200px) {
  .sblogos__col:nth-child(1n + 7) {
    display: none;
  }
}

/* --- */

.sblogos__row,
.sblogos__col,
.sblogos__link,
.sblogos__link:before {
  height: 100%;
}

@media (max-width: 539px) {
  .sblogos__col {
    height: 50%;
  }
}

.sblogos__link,
.sblogos__link:before {
  display: inline-block;
}

.sblogos__link {
  max-width: 100%;
  max-height: 100%;
}

.sblogos__img {
  display: inline-block;
  vertical-align: middle;
  height: auto;
  max-height: 100%;
  max-width: 100%;
}

.sblogos__link:before {
  content: "";
  vertical-align: middle;
}

/* Transition Base */

.sblogos__col.active {
  position: relative;
}

.sblogos__col.active .prev,
.sblogos__col.active .next {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  transition-easing: ease;
}

.sblogos .sblogos__col.active {
  perspective: 500px;
}

.sblogos .sblogos__col.active .prev {
  transition: opacity 2.75s ease-out, transform 2.75s ease;
}

.sblogos .sblogos__col.active .next {
  transition: opacity 1.5s ease-out, transform 1.5s ease;
}

/* start */
.sblogos .sblogos__col.active .next {
  opacity: 0;
  transform: translateZ(-125px);
}
/* end */
.sblogos .sblogos__col.active .transition.next {
  opacity: 1;
  transform: translateZ(0px);
}
/* start */
.sblogos .sblogos__col.active .prev {
  opacity: 1;
  transform: translateZ(0px);
}
/* end */
.sblogos .sblogos__col.active .transition.prev {
  opacity: 0;
  transform: translateZ(-250px);
}
</style>
