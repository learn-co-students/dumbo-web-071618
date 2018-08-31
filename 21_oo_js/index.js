// making instructors by hand
{
  name: 'eric',
  role: 'TCF',
  hobby: 'eat nutella',
  afterWork: afterWork
}

{
  name: 'tony',
  role: 'TCF',
  hobby: 'chase some \'mons'
}

function afterWork() {
  return `After 6pm I like to ${this.hobby}`
}

// factory function returns objects
function instructorFactory(name, role, hobby) {
  let obj = {}
  obj.name = name
  obj.role = role
  obj.hobby = hobby
  obj.afterWork = afterWork
  return obj
}

let tony = instructorFactory('tony', 'tcf', 'chase some \'mons')

// ES5 constructor pattern
let Instructor = (function () {
  // class variable
  let all = []

  function newThing (name, role, hobby) {
    // console.log(this)
    this.name = name
    this.role = role
    this.hobby = hobby
    all.push(this)
  }

  // class method
  newThing.all = () => [...all]
  return newThing
})()


let eric = new Instructor('eric', 'tcf', 'eat nutella')

// this allows us to give all instructors the after work property!
// we give it through the prototype
Instructor.prototype.afterWork = afterWork


// ES6
function instructorConstructor () {
  // class variable
  let all = []

  return class Instructor {
    // initialize

    constructor({name, role, hobby}) {
      // instance variables
      this.name = name
      this.role = role
      this.hobby = hobby
      all.push(this)
    }

    //class method
    static getAll() {
      return [...all]
    }

    // instance method
    afterWork() {
      return `After 6pm I like to ${this.hobby}`
    }
  }
}

// instead of using an IIFE we can also execute instructorConstructor ourselves
const Instructor = instructorConstructor()

let eric = new Instructor({name: 'eric', role: 'tcf', hobby: 'eat nutella'})
