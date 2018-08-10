# Intro to Rails

We will talk about how to make Rails work! The first thing to mention is that
Rails is a gem inside of Ruby. Every gem inside of Ruby needs to be installed
on your computer (either globally or locally). Since we want to be able to
make Rails applications at any point, we are going to install the gem **globally**:

  $ gem install rails

It will then install all of the necessary dependencies in order to run/build
rails applications. Our console will have a new Terminal command called `rails`.
Whenever we want to build our applications, we go into our terminal and run the
command `rails new <application_name>` where we replace `<application_name>`
with whatever name we want our application to be called. So when we run
`rails new blogger`, it makes a new folder with all of the necessary components called `blogger/`.

# Application Structure
Let's talk about some of this directory structure.
- `app/` is a folder that has a lot of the **app**lication code inside of it.
We use this so that way other developers understand where they can find all pieces we use for MVC.
  - Remember just like Sinatra, Rails also follows the pattern of MVC (Model-View-Controller). Each model, view, and controller will be able to handle a specific desired result to a specified resource.
- If we look further into the `app/`folder there are some more folders we are familiar with.
  - `controllers/` - This folder will hold all of our controller files.
    - Each controller is always written in its own file. So you'll have a file that will contain a class called `CarsController` and it would be in the `cars_controller.rb` file.
  - `models/` - This folder will hold all of our model files.
    - Each model will always be written in its own file. So you'll have a file that will contain a class called `Car` and it would be in the `car.rb` file. Here, we want to be sure that we are using the singular to describe our models since each time we make an instance, it refers to the *single* piece of data. This utilizes ActiveRecord so that way we can do all the things we were doing before like grabbing information as necessary.
  - `views/` - This folder will hold all of our view files.
    - Each of the files and folders in here will match to something that the controller will ask for. Whenever thinking about the naming of the files. Views for specific controllers will be GROUPED together in folders by the name of the controller. So views for the `CarsController` will be a in folder together underneath the `views` folder called `cars/`. Whenever the controller begins to render a view, it is gonna by default look in the folder matching and then the view it is asking for. So when we see `render :index` in the `CarsController`, it is being told go into the `views` folder, find a folder called `cars` and find a fine called `index.html.erb`.

# Request Response flow
When thinking of how the application flows. It starts from the web browser (also known as the client). The client makes a request to a url like `http://localhost:3000/cars`. This hits our application and it begins in the `config/routes.rb` file. In that file, it reads top down and says I'm looking for a request in the format of `GET /cars`. In Rails, we write this route as:

```
get '/cars'
```

The next step is then to tell the application which controller and what action it is supposed to go to. So the full result would be:

```
get '/cars', to: 'cars#index'
```

This says that when the client makes a request, it will go to the `CarsController` and hit the method/action called `index`. Inside of the `CarsController`, we read that method and see:

```
def index
  @cars = Car.all
  render :index
end
```

If we read it line-by-line, it says we are going to find all of the cars and store them in an instance variable called cars. Then we will render the `cars/index.html.erb` view. This is known as the **response** to the request that the client is making. The flow is finished when the response happens (the view getting rendered).
