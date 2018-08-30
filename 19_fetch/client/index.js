document.addEventListener('DOMContentLoaded', init)

function init() {
  console.log('loaded')
  fetch('http://localhost:3000/brews')
    .then(r => r.json())
    .then(renderBrews)
}

function renderBrews(data) {
  const list = document.querySelector('#brew-list')


  // arrow way
  // data.brews.forEach((brew) => {
  //   const li = document.createElement('li')
  //   li.innerText = brew.blend_name
  //   list.appendChild(li)
  // })

  data.brews.forEach(function(brew) {
    const li = document.createElement('li')
    li.innerText = brew.blend_name
    li.dataset.id = brew.id
    li.dataset.blend_name = brew.blend_name
    li.addEventListener('click', (e) => {
      console.log(e.target.dataset)
      e.target.style.color = 'green'
    })
    list.appendChild(li)
  })
}


// XHR Syntax
// So many steps, if only there were a better way!
function reqListener() {
  console.log(this)
  console.log(JSON.parse(this.response))
}

var req = new XMLHttpRequest()
req.addEventListener("load", reqListener)
req.open("GET", "http://localhost:3000/brews")
req.setRequestHeader('Content-Type', 'application/json')
req.send()

// Get request
fetch("http://localhost:3000/brews")
  .then(r => r.json())
  .then(console.log
)


// Post Request
let data = {
    blend_name: "Dunkin Coolata",
    origin: "Dunkin Donuts",
    notes: "cheap",
    strength: 5
}

fetch('http://localhost:3000/brewskis', {
  method: "POST",
  headers: {
      "Content-Type": "application/json",
  },
  body: JSON.stringify(data)
})
  .then((resp) => {
    if (resp.ok) {
      console.log('yay')
    } else {
      console.log('try again')
    }}, () => console.log('oh noes'))







