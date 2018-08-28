# Functional JS
- reference vs execution()
- functions are first-class objects
- pure functions return the same output give the same input
- higher-order functions take functions as arguments or return them
- using closures, functions can capture variables within the scope of where they were defined and carry that data with them
- IIFE


### closures
- scope
- what functions carry with them
- keep data separate
- function can return functions
- functions are objects

* Functions are **first class objects**
  * can be saved as variables and passed as arguments
* **Pure functions**
  * Given the same inputs, the function will always return the same output
  * Has no **side-effects**, meaning it doesn't change anything in the program
      * Modifying any external variable or object property
      * Logging to the console
      * Writing to the screen or a file
      * Triggering any external process
      * Calling any other functions with side-effects
  * Avoid **shared state**
      * Don't use variables/data from outside of the function
  * Avoid **mutating state**
      * Creating new objects: `Object.assign` or spread operators
  * References
      * [Quick Read - Medium](https://medium.com/@jamesjefferyuk/javascript-what-are-pure-functions-4d4d5392d49c)
      * [In depth read - Medium](https://medium.com/javascript-scene/master-the-javascript-interview-what-is-a-pure-function-d1c076bec976)
* **Higher-order functions** and reusability
  * HOF take a callback argument or return a function
  * **Partial application** of a function to its arguments or create a **curry**-able function for the purpose of reuse or function composition
  * Take a list of functions and return some composition of those input functions
  * References
      * [Simple Explanation of Higher Order Functions - Quora](https://www.quora.com/What-is-a-simple-explanation-of-higher-order-functions-and-callbacks-in-JavaScript)
      * [Eloquent JavaScript HOF - ebook](http://eloquentjavascript.net/05_higher_order.html)
      * [Sitepoint](https://www.sitepoint.com/higher-order-functions-javascript/)
      * [Currying and Partial Application](https://medium.com/wdstack/javascript-function-composition-currying-and-partial-application-5a04107530ee)
* Function **closures**
  * A function can reference variables within its scope (when it was first declared)
  * Functions can access those captured variables even when the function is invoked outside their scope.
  * Like all functions can be assigned to a variable, be passed as an argument to a function, or be returned as a function result

* Exercises:
https://gist.github.com/alexgriff/97cd3cc946f3047828c1196afd66ac61