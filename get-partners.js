// // file system module to perform file operations
const fs = require('fs')
const axios = require('axios')

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

axios.get('https://aaaimx-admin-stage.herokuapp.com/api/partners/?all=').then(res => {
  var partners = res.data
  var data = [
    {
      group: 'Research Centers',
      elements: []
    },
    {
      group: 'Divisions',
      elements: []
    },
    {
      group: 'Partners',
      elements: []
    },
    {
      group: 'Sponsors',
      elements: []
    }
  ]
  partners.forEach(p => {
    if (p.logoFile || p.logoName) {
      if (p.logoFile) p.logoName = getImgUrl(p.logoFile)
      if (p.type === 'Research Center') data[0].elements.push(p)
      if (p.type === 'Division') data[1].elements.push(p)
      if (p.type === 'Partner') data[2].elements.push(p)
      if (p.type === 'Sponsor') data[3].elements.push(p)
    }
  })
  var jsonContent = JSON.stringify(data, null, 4)
  console.log(jsonContent)

  fs.writeFile('./_data/partners.json', jsonContent, 'utf8', function (
    err
  ) {
    if (err) {
      console.log('An error occured while writing JSON Object to File.')
      return console.log(err)
    }

    console.log('JSON file has been saved.')
  })
})
