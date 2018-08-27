# Procedural JavaScript

## what is weird about javascript
- overall syntax: curlies, semi-colons
  - no need for semi-colons
  - curlies define statements in code
- EXPLICIT RETURNS
  - most tricky when iterating or nesting multiple functions
  - check at every level for return
- type coercion
- data types
- variable keywords
- scope
  - can see higher levels of scope
  - cannot see lower levels of scope
- hoisting
  - declaration of variable is hoisted
  - not hoisting value of variable, assignment
  - const is not hoisting
- treequals

## DataTypes
- numbers
  - floats and integers
  - 4.0, 4, -4
  - NaN
  - 1 + undefined // NaN
- string
  - 1 + '2' // '12'
  - interpolation
  - "#{code} normal string" // ruby
  - `${code} normal string` // js
- objects
  - everything is an object
  - array
    - !![].length
  - polo
    - !!Object.keys({}).length
  - function
    - 'first class citizen'
    - difference between reference and execution
  - two ways to get values
    - with variables, use square brackets
- undefined
  - return value for functions with no explicit return
- symbol
  - we don't use them a ton
- booleans
  - true and false
- null // nothing

## Pass by value, pass by reference
- objects are pass by reference
- if i set a new object equal to an old one, updating one will update both
- must use spread or object.assign to really copy an object

## Type coercion
- operation on two different types
- convert floats into integers
- can get NaN
- converts things into strings
[1,2,3] + [4,5,6]
"1,2,34,5,6"
- parseInt('42')

## Variable Assignment
- cannot reset const
  - can change makeup of array or object defined with const
- let we can reset

## JavaScript History
  - Marc Andreessen co-founder of Netscape envisioned a more dynamic web
  - the web needed a scripting language that could interact with the DOM
  - the marketing decisions Netscape made informed the basic structure of JS
  - created by Brandon Eich at Netscape in 10 days in 1995
  - based off of functional languages with some object-oriented patterns
  - was not a highly respected programming language for about 10 years
  - the standard for JavaScript implementations is called ECMAScript
  - the standard is updated yearly and the standard for that year is called ECMAScript 20xx (or ES 20xx)
  - [Browser Compatibility](https://kangax.github.io/compat-table/es6/)
  - transpiling: we use the features of the language we want, translate it into something all browsers understand


## Review Request-Response Cycle
- In the browser
  - A user enters an address in the address bar (or clicks a link)
  - We get a response back with data in binary, text, HTML, or JSON
  - The user usually sees a loading indicator (like a spinning circle) near the address bar
  - Included in that HTML are links to images, fonts, stylesheets, and scripts
  - Each one of those links means another request by the browser but without refreshing the page
  - When all the external links have loaded, the page itself is finished loading
- Loaded JavaScript
  - runs directly in the client (unlike ERB all put together on server and sent back as a string)
  - JavaScript can be written directly in HTML through a `script` tag
  - It can also be loaded externally through a `script` tag with a `src` attribute
  - When the browser sees JavaScript, it attempts to run it immediately
- JavaScript implementations
  - Each browser has its own [JavaScript engine](http://en.wikipedia.org/wiki/JavaScript_engine) or implementation
  - The [Document Object Model](https://en.wikipedia.org/wiki/Document_Object_Model) is the interface between the loaded HTML and the JavaScript code we write
  - Most browsers are converging on agreeing on web standards, but browsers need ability to add proprietary features to CSS, JS, and DOM
  - [MDN](https://developer.mozilla.org/en-US/)


## How to do the Labs
- Mocha runs in browser, get used to working with code there
- console.log('>>>>>>>>>>>>>>>>')
- debugger (need console open)