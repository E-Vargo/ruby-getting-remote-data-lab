require 'json'
require 'open-uri'
require 'net/http'

class GetRequester 

    attr_accessor :string

def initialize(string)
    @string = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
end

def get_response_body
    uri = URI.parse(@string)
    response = Net::HTTP.get_response(uri)
    response.body
end

def parse_json
JSON.parse(get_response_body)
end

end
