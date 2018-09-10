## Tips for starting Rails backend
- rails new project --api --database=postgresql
- if you use --api, should default to json views
  - render json: data
- when using the api flag, turns off protect_from_forgery
  - tries to match authenticity token
- bundle rack-cors and uncomment the config file
  - change the origin '*'
  - when deploying update the origin to wherever the front-end lives
- install gem active_model_serializers
  - create the serializer
  - customize the json data our app returns
    - create custom methods
  - rails uses as a default, no need to hook it up

# JSON
  -gives us data back as an object
  -language agnostic

# Turn off protect_from_forgery in order to send requests to API

# Turn on CORS