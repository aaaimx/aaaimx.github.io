function getImgUrl (url) {
  var result = ''
  try {
    var res = url.split('https://drive.google.com/file/d/')
    res = res[1]
    res = res.split('/view?usp=drivesdk')
    result = 'https://drive.google.com/uc?id=' + res[0]
  } catch (error) {
    console.log(error)
  }
  return result
}

function innerMember (m) {
  var $committee = $('.posted-review.committee')
  var templateHtml = $('.committee-template', $committee).html()
  var html = templateHtml
  var photo = "/img/people/default-avatar.jpg";
  if (m.thumbnailFile) {
    photo = getImgUrl(m.thumbnailFile)
  }

  var attributes = {
    surname: m.surname.split('-')[0],
    name: m.name.split(' ')[0],
    thumbnailUrl: photo,
    charge: m.charge
  }
  Object.keys(attributes, html).forEach(function (key) {
    html = html.replace('[[' + key + ']]', attributes[key])
  })
  $committee.append(html)
}

function innerBoardMember (m) {
  var $board = $('.board')

  var templateHtml = $('.board-template', $board).html()
  var html = templateHtml
  var photo = "/img/people/default-avatar.jpg";
  if (m.thumbnailFile) {
    photo = getImgUrl(m.thumbnailFile)
  }

  var attributes = {
    surname: m.surname,
    name: m.name,
    thumbnailUrl: photo,
    charge: m.charge
  }
  Object.keys(attributes, html).forEach(function (key) {
    html = html.replace('[[' + key + ']]', attributes[key])
  })
  $board.append(html)
}

function renderTemplate (attr, html, element) {
  Object.keys(attr, html).forEach(function (key) {
    html = html.replace('[[' + key + ']]', attr, html[key])
  })
  element.append(html)
}
