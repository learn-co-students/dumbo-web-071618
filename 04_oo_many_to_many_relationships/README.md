# OO One to Many Relationship

## Objective
* Implement both sides of a many to many relationships
* Practice keeping groups of data related to classes on the class as a class variable
* Demonstrate single source of truth by not storing collections of objects on other objects
* Demonstrate single source of truth by not storing one object in multiple collections

## Deliverables
- Create a Author class
  - `.author_names_in_alph_order` returns out an array of book titles in alphabetical order
- Create a Book class
- Create a Genre class
  - Should initialize with a name
  - A reader method for a name
  - `.all` that returns all the Genres created
  - `#books` returns an array of Book instances in this genre
  - `#authors` returns an array of Author instances who have written in this genre
  - `.all_ordered_by_name`
    - Returns an array of all Genre instances ordered reverse alphabetical (descending order `Z-A`) by name
