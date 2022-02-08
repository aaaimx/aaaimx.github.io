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

function innerMember(m) {
  var $committee = $(".posted-review.committee");
  var templateHtml = $(".committee-template", $committee).html();
  var html = templateHtml;
  var photo = "/img/people/default-avatar.jpg";
  if (m.thumbnailFile) {
    photo = getImgUrl(m.thumbnailFile);
  }

  var attributes = {
    surname: m.surname.split("-")[0],
    name: m.name.split(" ")[0],
    thumbnailUrl: photo,
    charge: m.charge
  };
  Object.keys(attributes, html).forEach(function(key) {
    html = html.replace("[[" + key + "]]", attributes[key]);
  });
  $committee.append(html);
}

function innerBoardMember(m) {
  var $board = $(".board");

  var templateHtml = $(".board-template", $board).html();
  var html = templateHtml;
  var photo = "/img/people/default-avatar.jpg";
  if (m.thumbnailFile) {
    photo = getImgUrl(m.thumbnailFile);
  }

  var attributes = {
    surname: m.surname,
    name: m.name,
    thumbnailUrl: photo,
    charge: m.charge
  };
  Object.keys(attributes, html).forEach(function(key) {
    html = html.replace("[[" + key + "]]", attributes[key]);
  });
  $board.append(html);
}

function renderTemplate(attr, html, element) {
  Object.keys(attr, html).forEach(function(key) {
    html = html.replace("[[" + key + "]]", attr, html[key]);
  });
  element.append(html);
}

function setCookie(cname, cvalue, exdays) {
  var d = new Date();
  d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
  var expires = "expires=" + d.toUTCString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
  var name = cname + "=";
  var ca = document.cookie.split(";");
  for (var i = 0; i < ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == " ") {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}

function checkCookie() {
  var user = getCookie("username");
  if (user != "") {
    alert("Welcome again " + user);
  } else {
    user = prompt("Please enter your name:", "");
    if (user != "" && user != null) {
      setCookie("username", user, 365);
    }
  }
}
