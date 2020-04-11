require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  def initialize(url)
  end
    
  def get_response_body(url)
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
end