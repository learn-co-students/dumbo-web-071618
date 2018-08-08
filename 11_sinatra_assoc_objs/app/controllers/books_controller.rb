class BooksController < ApplicationController
  # Index action
  # ===========
  # Gets all of 1 resource (a model)
  get "/books" do
    @books = Book.all
    erb :'books/index'     # '/views/index.erb'
  end

  # New Action
  # ==========
  # Sends us to the new form
  get "/books/new" do
    @authors = Author.all
    erb :'books/new'
  end

  # Create Action
  # ===========
  # Form takes us to this route and do all of the changes on the backend
  post '/books' do
    binding.pry
    book = Book.new(params)

    if book.save
      # Show the new book
      redirect to("/books/#{book.id}")
    else
      # Show me the new form again
      erb :'books/new'
    end
  end


  # Show Action
  # ============
  # Shows a specific item under a resource
  get "/books/:id" do
    # Find a book by its id number
    # we will assume that params["id"] has the id number we are looking for
    # render out "show" page
    # binding.pry
    @book = Book.find(params["id"])
    erb :'books/show'     # '/views/show.erb'
  end

  # Edit action
  # =========
  # Takes us to a form to edit something on our database
  get '/books/:id/edit' do
    @book = Book.find(params["id"])
    erb :'books/edit'
  end

  # Update Action
  # ==============
  # It does the behind the scenes work for our form. Where the form will go to
  patch '/books/:id' do
    book = Book.find(params["id"])
    book.update(params["book"])

    redirect to("/books/#{book.id}")
    # binding.pry
  end


  delete '/books/:id' do
    book = Book.find(params["id"])
    book.destroy

    redirect to("/books")
  end
end
