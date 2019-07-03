<template>
   <!--==========================
        Clients Section
      ============================-->
      <section id="clients" class="wow fadeInUp">
        <div class="container">
          <div class="section-header">
            <h2>Partners & Sponsors</h2>
            <p>
              Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam
              enim
              export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit
              export
              irure minim illum fore
            </p>
          </div>
          <div class="owl-carousel clients-carousel">
            <a v-for="s in sponsors" :key="s.website" target="_blank" :href="s.website"><img :src="s.logo" :title="s.name" /></a>
          </div>
        </div>
      </section>
      <!-- #clients -->
</template>

<script>
import { sponsors } from '../assets/js/sponsors'
export default {
  data () {
    return {
      sponsors
    }
  }
}
</script>

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
  section {
    padding-bottom: 50%;
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
    width: 33.33%
  }
  section {
    padding-bottom: 40%;
  }
}
@media (min-width: 768px) {
  .sblogos__col {
    width: 33.33%
  }
  section {
    padding-bottom: 30%;
  }
}
@media (min-width: 992px) {
  .sblogos__col {
    width: 16.6667%;
  }
  section {
    padding-bottom: 10%;
  }
}
@media (min-width: 1200px) {
  .sblogos__col {
    width: 16.6667%;
  }
  .sblogos__row {
    padding-top: 0%;
    padding-bottom: 0%;
  }
  .sblogos {
    height: 180px;
  }
}
/* --- */
@media (max-width: 539px) {
  .sblogos__col:nth-child(1n + 7) {
    display: none;
  }
}
@media (min-width: 540px) and (max-width: 767px) {
  .sblogos__col:nth-child(1n + 7) {
    display: none;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .sblogos__col:nth-child(1n + 7) {
    display: none;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .sblogos__col:nth-child(1n + 7) {
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
