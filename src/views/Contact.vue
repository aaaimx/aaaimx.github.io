<template>
  <section id="contact" class="wow fadeInUp">
    <div class="container">
      <div class="section-header">
        <h2>Contact Us</h2>
        <p>
          Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim
          export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export
          irure minim illum fore
        </p>
      </div>

      <div class="container">
        <div class="row">
          <div class="container mb-4 col-sm-12 col-md-6 col-lg-6">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3220.1334292434917!2d-89.66899778548616!3d21.013003986006936!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f5674891d01315f%3A0xcb8ba96b39a6031c!2sInstituto+Tecnol%C3%B3gico+de+M%C3%A9rida+Campus+Poniente!5e1!3m2!1sen!2sbg!4v1561779443994!5m2!1sen!2sbg"
              width="100%"
              height="380"
              frameborder="0"
              style="border:0"
              allowfullscreen
            ></iframe>
          </div>

          <div class="form col-sm-12 col-md-6 col-lg-6">
            <div id="sendmessage">Your message has been sent. Thank you!</div>
            <div id="errormessage"></div>
            <form action method="post" role="form" class="contactForm">
              <div class="form-row">
                <div class="form-group col-md-6">
                  <input
                    type="text"
                    name="name"
                    class="form-control"
                    id="name"
                    placeholder="Your Name"
                    data-rule="minlen:4"
                    data-msg="Please enter at least 4 chars"
                  />
                  <div class="validation"></div>
                </div>
                <div class="form-group col-md-6">
                  <input
                    type="email"
                    class="form-control"
                    name="email"
                    id="email"
                    placeholder="Your Email"
                    data-rule="email"
                    data-msg="Please enter a valid email"
                  />
                  <div class="validation"></div>
                </div>
              </div>
              <div class="form-group">
                <input
                  type="text"
                  class="form-control"
                  name="subject"
                  id="subject"
                  placeholder="Subject"
                  data-rule="minlen:4"
                  data-msg="Please enter at least 8 chars of subject"
                />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <textarea
                  class="form-control"
                  name="message"
                  rows="5"
                  data-rule="required"
                  data-msg="Please write something for us"
                  placeholder="Message"
                ></textarea>
                <div class="validation"></div>
              </div>
              <div class="text-center">
                <button type="submit">Send Message</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <hr>
      <div class="row contact-info">
        <div class="col-md-4">
          <div class="contact-address">
            <i class="fa fa-map-marker"></i>
            <h3>Address</h3>
            <address>Mérida Institute of Technology, Yucatán, México</address>
          </div>
        </div>

        <div class="col-md-4">
          <div class="contact-phone">
            <i class="fa fa-facebook"></i>
            <h3>Facebook</h3>
            <p>
              <a href="tel:+155895548855">AAAI Student Chapter México</a>
            </p>
          </div>
        </div>

        <div class="col-md-4">
          <div class="contact-email">
            <i class="fa fa-envelope-o"></i>
            <h3>Email</h3>
            <p>
              <a href="mailto:contact@aaaimx.org">contact@aaaimx.org</a>
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- #contact -->
</template>
