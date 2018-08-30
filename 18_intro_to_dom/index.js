document.addEventListener("DOMContentLoaded", () => {
  //Functions to get Objects from the HTML
  let divs = document.querySelectorAll("div")
  // document.querySelector('')
  // document.getElementById('id')
  // document.getElementsByTagName('tagName')
  // document.getElementsByClassName('className')
  // document.getElementsByName('name')

  //Getting the main div from the NodeList(Array-like object holding all the div objects)
  let maindiv = divs[0]
  maindiv.style.borderStyle = "dotted"
  maindiv.style.borderColor = "red"

  //Way to append stuff to the DOM
  let button = document.createElement('button')
  button.innerText = "Click for Menu"
  maindiv.append(button)

  //Function that'll take in a BurgerObj and append it to the DOM.
  function makeBurger(burgerObj){
    let burgerDiv = document.createElement('div')
    burgerDiv.innerHTML= renderBurger(burgerObj)
    maindiv.append(burgerDiv)
  }
  //Returns the string for the InnerHTML
  function renderBurger(burgerObj){
    return `<h3><p>${burgerObj.name}</p><p>${burgerObj.category}</p><img src=${burgerObj.imgURL}></img></h3>`
  }

  //Function reference that's being passed in as a callback in the Event Listener
  const burgerMakerFunction = () => {
    burgers.forEach(function(burger){
      makeBurger(burger)
    })
  }
  //Actually adding an eventlistener to the button
  button.addEventListener("click", burgerMakerFunction)
})
