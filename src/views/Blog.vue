<template>
  <main id="main">
    <br />

    <!-- Page Content -->
    <div class="container">
      <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8" id="app">
          <h1 class="my-4">Recent articles</h1>
          <div class="col-xs-1" align="center">
            <Circle8 v-show="posts.length == 0"/>
          </div>
          <br>
          <!-- Blog Post -->
          <div v-for="post in last" :key="post.id" class="card mb-4">
            <div class="card-body">
              <h2 class="card-title">{{post.title}}</h2>
              <p class="card-text">
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatibus atque neque
                labore cum dolores sequi quae, consequatur ex qui illo, accusantium esse id dolorum eaque alias
                reprehenderit sapiente inventore at!
              </p>
              <a :href="post.url" target="_blank" class="btn btn-primary">Read More →</a>
            </div>
            <div class="card-footer text-muted">
              Posted on January {{post.id + post.albumId}}, 2109 by
              <a href="#">AAAIMX</a>
            </div>
          </div>

          <!-- Pagination -->
          <ul class="pagination justify-content-center mb-4">
            <li class="page-item">
              <a class="page-link" href="#">← Older</a>
            </li>
            <li class="page-item disabled">
              <a class="page-link" href="#">Newer →</a>
            </li>
          </ul>
        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
          <!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for..." />
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>
          <!-- Categories Widget -->
          <div class="card my-3">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">All profiles</a>
                    </li>
                    <li>
                      <a href="#">Advisors</a>
                    </li>
                    <li>
                      <a href="#">Students</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Previous</a>
                    </li>
                    <li>
                      <a href="#">Recents</a>
                    </li>
                    <li>
                      <a href="#">Popular</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- Categories Widget -->
          <div class="card my-3">
            <h5 class="card-header">Topics</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Machine Learning</a>
                    </li>
                    <li>
                      <a href="#">Deep Learning</a>
                    </li>
                    <li>
                      <a href="#">Software</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Applied Maths</a>
                    </li>
                    <li>
                      <a href="#">Symbolic AI</a>
                    </li>
                    <li>
                      <a href="#">Electronic</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <!-- Side Widget 
          <div class="card my-4">
            <h5 class="card-header">maelezo</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new
              Bootstrap 4 card containers!
            </div>
          </div>-->
          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Our Logo</h5>
            <div class="card-body">
              <img
                class="card-img-top"
                src="static/img/logos/aaaimx-white.jpg"
                alt="Card image cap"
              />
            </div>
          </div>
          <!-- tweeter -->
          <div class="card my-4">
            <h5 class="card-header">Useful Links</h5>
            <div class="card-body">
              <a class="twitter-timeline" href>Research Gate</a>
              <a class="twitter-timeline" href>Orcid</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </main>
</template>

<script>
import trae from "trae";
import DoubleBounce from "vue-loading-spinner/src/components/DoubleBounce";
import Circle8 from "vue-loading-spinner/src/components/Circle8";
export default {
  components: {
    Circle8,
    DoubleBounce
  },
  data() {
    return {
      posts: []
    };
  },
  created() {
    trae.get("https://jsonplaceholder.typicode.com/photos").then(
      response => {
        this.posts = response.data;
        console.log(response);
      },
      err => {
        console.log(err);
      }
    );
  },
  computed: {
    last() {
      return this.posts.slice(0, 5);
    }
  }
};
</script>


