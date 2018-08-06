require 'pry'

class App
  def call(env_hash)
    if env_hash["REQUEST_PATH"] == "/"
      return [200, {},[ "Hello World!"]]
    elsif env_hash["REQUEST_PATH"] == "/about/prince"
      return [404, {}, ["Welcome to MySpace. This is Prince's home."]]
    end
  end
end
