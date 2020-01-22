// file system module to perform file operations
const fs = require('fs')
const axios = require('axios')

// json data
var jsonData = []

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

axios
  .get('https://aaaimx-admin.herokuapp.com/api/members/?panel=true&limit=20')
  .then(res => {
    var members = res.data.results
    members.forEach(m => {
      const { surname, name, board, committee, thumbnailFile, charge } = m
      var attributes = {}
      var photo = '/img/people/default-avatar.jpg'
      if (thumbnailFile) {
        photo = getImgUrl(thumbnailFile)
      }
      if (committee && charge.indexOf('Leader') !== -1) {
        attributes = {
          surname: surname.split('-')[0],
          name: name.split(' ')[0],
          thumbnailUrl: photo,
          committee,
          charge
        }
        jsonData.push(attributes)
      } else if (board) {
        attributes = {
          surname,
          name,
          thumbnailUrl: photo,
          board,
          charge
        }
        jsonData.push(attributes)
      }
    })
    // stringify JSON Object
    var jsonContent = JSON.stringify(jsonData, null, 4)
    console.log(jsonContent)

    fs.writeFile('./_data/team.json', jsonContent, 'utf8', function (err) {
      if (err) {
        console.log('An error occured while writing JSON Object to File.')
        return console.log(err)
      }

      console.log('JSON file has been saved.')
    })
  })
