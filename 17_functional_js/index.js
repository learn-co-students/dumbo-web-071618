// // console.log('loaded')
//
// const sayHello = function() {
//   console.log('hello')
// }
//
// const arr = [1,2,3,4]
// const dummy = []
//
// for(let i=0; i< arr.length; i++) {
//   // no-mutating
//   // dummy.push(arr[i] * arr[i])
//   // mutate original
//   arr[i] = arr[i] * arr[i]
// }
//
// // map whenever you need new data
//
// console.log(arr)
// console.log(dummy)

// function apple() {
//   console.log('you\'ve sold one apple')
// }
//
// function pear() {
//   console.log('you\'ve sold one pear')
// }


function fruitSeller(fruit) {
  return (function() {
    let total = 0
    return function() {
      total += 1
      console.log(`you've sold ${total} ${fruit}s`)
    }
  })()
}

const issues = [
  {
    "body": "Instructions say GET /team and POST /newteam. Rspec wants GET/newteam and POST/team.",
    "created_at": "2016-03-31 16:23:13 UTC",
    "comments_count": 0,
    "id": 144948778,
    "number": 7,
    "state": "closed",
    "url": "https://api.github.com/repos/learn-co-curriculum/basic-sinatra-forms-lab/issues/7"
  },
  {
    "body": "This pull request has been automatically created by learn.co.",
    "created_at": "2016-03-28 03:25:56 UTC",
    "comments_count": 1,
    "id": 143883618,
    "number": 3,
    "state": "closed",
    "url": "https://api.github.com/repos/learn-co-curriculum/angular-what-is-the-event-system-readme/issues/3"
  },
  {
    "body": "This section talks about the keywork GROUP BY but the exercise did not use that. ",
    "created_at": "2016-03-27 23:55:28 UTC",
    "comments_count": 1,
    "id": 143861795,
    "number": 11,
    "state": "closed",
    "url": "https://api.github.com/repos/learn-co-curriculum/sql-grouping-and-sorting-readme/issues/11"
  },
  {
    "body": "",
    "created_at": "2016-06-21 19:51:37 UTC",
    "comments_count": 0,
    "id": 161524199,
    "number": 1,
    "state": "closed",
    "url": "https://api.github.com/repos/pletcher/test_repo_please_ignore/issues/1"
  }
]

function filterIssues(issues){
  return issues.filter(issue => {
    return issue.body != "This pull request has been automatically created by learn.co."
  })
}

function updateIssues(issues) {
  return issues.map(issue => {
    const newIssue = {...issue}
    newIssue.url = newIssue.url.replace('api', 'apiv2')
    return newIssue
  })
}

function github(issues) {
  // const filtered = filterIssues(issues)

  return updateIssues(filterIssues(issues))
}

  // go through issues and find issues not created by learn-co
    // filter
  // update url to 'api-v2.github.com'
    // map









// const apple = fruitSeller('apple')
// const pear = fruitSeller('pear')
//
// function multiplier(n) {
//   return function(m) {
//     return n * m
//   }
// }

// function wrongDoubler(m) {
//   return multiplier(2)(m)
// }

// const doubler = multiplier(2)










