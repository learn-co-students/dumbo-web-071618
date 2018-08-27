console.log("Hello World")

function sayHello() {
  return 'Say Hello'
}

sayHello

let cow = {'cow': 'moo'}

function findAnimalSound(animal, name){
  // to call a key with a variable, use bracket notation
  animal[name]
  return 'moo'
}

findAnimalSound(cow, 'cow')

function mapThroughStuff(arr, callback) {
  return arr.map(function(el) {
    return callback(el)
  })
}


// the declaration of x is hoisted to the top, but the assignment of the value 3 is not
console.log(x) // undefined
var x = 3

// errors because const and let don't hoist
// console.log(x)
// const x = 3

function outer() {
  function inner() {
    if (true) {
      let x = 3
    }

    let y = 4
    // logs
    console.log(y)
    // errors because let is blocked scoped
    console.log(x)
  }
  inner()
}

outer()






