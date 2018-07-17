# Google Books API "https://www.googleapis.com/books/v1/volumes?q={#{term}}"

require 'rest-client'
require 'json'
require 'pry'


# Make our request
response = RestClient.get 'https://reddit.com/r/corgis/.json'

# Take that request and convert it to be useable for Ruby
json_response = JSON.parse(response.body)

# Change the data to be in a format we want to be using
beef = json_response["data"]["children"].map do |post_hash|
  {
    title: post_hash["data"]["title"],
    score: post_hash["data"]["score"]
  }
end

# Displaying it to the user
beef.each do |beef_hash|
  puts "==============="
  puts "Title: #{beef_hash[:title]} (Score of #{beef_hash[:score]})"
  puts "==============="
end
