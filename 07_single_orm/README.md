# Single ORM

## Objectives

* Define Object Relational Mapper (ORM)
* Distinguish between ORM and SQL
* Demonstrate that ORMs are the pattern connecting scripting languages and databases
* Explain how the `sqlite` gem works as a driver or wrapper around SQL
* Implement HEREDOCs to be saved in variables to be executed by SQL driver
* Perform persistent CRUD actions on two separate models

## Deliverables

### Each class

* Public methods
  * `#initialize(attrs)`
  * `#save`
  * `#update(attrs)`
  * `#delete`
  * `.create(attrs)`
  * `.all`
  * `.delete(id)`
  * `.find(id)`
  * `.find_by(attrs)`
* Private methods
  * `#mass_assign_attributes(attrs)`
  * `#insert_record`
  * `#update_record`
  * `#delete_record`
