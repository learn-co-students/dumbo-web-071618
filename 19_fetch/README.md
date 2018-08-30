# Goals
- understand the role request/response plays in our applications
- learn fetch syntax
- understand promise handling
- render DOM elements based on fetched data

- Promises are objects that fetch request return
  - can chain on .thens which will call functions when the promises resolves
  - .then will just return another promise
- JSON - javascript object notation
  - a readable way to access data across langauges

# New elements
- create element
- give element properties
- add any event listeners
- slap it on dom

GET '/brews', '/brew/:id'
POST '/brews'
PATCH  '/brews/:id'
DELETE '/brews/:id'