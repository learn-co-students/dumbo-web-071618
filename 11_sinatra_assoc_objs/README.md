# Sinatra Associated Objects

## Routes Overview
Let's take a book website as an example.

- You'd want a controller action to create a new book (new route)
- You'd want a controller action to display a single book (show route)
- You'd want a controller action to display all books (index route)
- You'd want a controller action to delete a book (destroy route)
- You'd want a controller action to edit a book (edit route)

Here's a visual table to associate the actions together with the routes that we want!

| HTTP VERB | ROUTE              | Action        | Used For                                            |
| --------- | ------------------ | ------------- | --------------------------------------------------- |
| GET       | '/books'           | index action  | index page to display all books                     |
| GET       | '/books/new'       | new action    | displays create book form                           |
| POST      | '/books'           | create action | creates one book                                    |
| GET       | '/books/:id'       | show action   | displays one book based on ID in the url            |
| GET       | '/books/:id/edit'  | edit action   | displays edit form based on ID in the url           |
| PATCH     | '/books/:id'       | update action | _modifies_ an existing book based on ID in the url  |
| PUT       | '/books/:id'       | update action | _replaces_ an existing book based on ID in the url  |
| DELETE    | '/books/:id'       | delete action | deletes one book based on ID in the url             |
