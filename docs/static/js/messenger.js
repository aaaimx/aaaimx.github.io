/**
 * Init Facebook Messanger Chat
 */
window.fbAsyncInit = function () {
    FB.init({
        xfbml: true,
        version: 'v3.2',
        appId: '1678638095724206'
    });
};

(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
