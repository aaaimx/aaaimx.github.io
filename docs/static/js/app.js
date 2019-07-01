var app = new Vue({
    el: "#app",
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
    },
    computed: {
        last() {
            return this.posts.slice(0, 5)
        }
    }
})