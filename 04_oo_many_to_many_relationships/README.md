# OO One to Many Relationship


## Recap

We're moving away from just using strings, and now using OBJECTS
```
ClassRoom.new(["Prince", "Eric", "Jane", "Alice"])
ClassRoom.new([#<Student:0x000 @name="Prince">,#<Student:0x000 @name="Eric">, #<Student:0x000 @name="Jane">, ])
```

- What is a Model?
  - The data and the methods that will modify that data, all housed within a class
- Domain Modeling
  - We're describing the relationships of our models to one another

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
