require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  def initialize(url)
    @url = url
  end
    
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    parsed = JSON.parse(self.get_programs)
    parsed.collect do |data|
      data
    end
  end
  
end