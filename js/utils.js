function getImgUrl(url) {
  var result = "";
  try {
    var res = url.split("https://drive.google.com/file/d/");
    res = res[1];
    res = res.split("/view?usp=drivesdk");
    result = "https://drive.google.com/uc?id=" + res[0];
  } catch (error) {
      console.log(error);
  }
  return result;
}

function renderTemplate(attr, html, element) {
    Object.keys(attr, html).forEach(function (key) {
        html = html.replace("[[" + key + "]]", attr, html[key]);
    });
    element.append(html);
}
