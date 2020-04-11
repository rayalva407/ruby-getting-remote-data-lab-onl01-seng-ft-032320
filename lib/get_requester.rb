require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  url = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
    
  def get_response_body(url)
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
end