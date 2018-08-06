# ApplicationController
# =====================
#  - Represents the top-level controller for our application
#  - A controller will **inherit** from Sinatra::Base
class ApplicationController < Sinatra::Base

  # Since we are writing a non-standard Sinatra application
  # (a.k.a. we are writing it with folders and a modular pattern),
  # we need to say where the root is and where the app is supposed
  # to find its views.
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, File.join(root, "views")


  # Index action
  # ===========
  # Gets all of 1 resource (a model)
  get "/books" do
    @books = Book.all
    erb :index   # '/views/index.erb'
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
    erb :show     # '/views/show.erb'
  end




end
