# Write your code here
require 'open-uri'
require 'json'
require 'net/http'


class GetRequester

  def initialize(url)
    @url=url
  end

  def get_response_body
    uri = URI.parse(@url)
    data=  uri.open.string
    #@response = Net::HTTP.get_response(uri) #second way
    #res=@response.body
  end

  def parse_json

    aa=JSON.parse(get_response_body)
   binding.pry
  end


end
