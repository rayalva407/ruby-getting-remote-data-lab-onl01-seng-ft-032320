require 'net/http'
require 'open-uri'
require 'json'

class GetRequester(url)
  
  def initialize(url)
    @url = url
  end
  
end