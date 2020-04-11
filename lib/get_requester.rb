require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  def initialize
    url = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
  end
 
  def get_response_body
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
end