let eric = {
  role: 'TCF',
  hobby: 'eat nutella',
  afterWork: function afterWork(hobby2, hobby3) {
    console.log(this)
    return `After 6pm I like to ${this.hobby} & ${hobby2} & ${hobby3}`
  }
}

let tony = {
  role: 'TCF',
  hobby: 'chase some \'mons'
}

let greg = {
  role: 'TCF',
  hobby: 'ping pong & everything'
}

// we can give tony access to eric's after work function
tony.afterWork = eric.afterWork


// two ways to automate making new instructors
function instructorFactory(role, hobby) {
  const obj = {}
  obj.role = role
  obj.hobby = hobby
  obj.afterWork = afterWork
  return obj
}

function Instructor(role, hobby) {
   this.role = role
   this.hobby = hobby
   this.afterWork = afterWork
}


let greg = new Instructor('TCF', 'play ping pong')





