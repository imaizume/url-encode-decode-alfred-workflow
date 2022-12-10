require 'json'
require 'uri'
require './create_result'

decoded_uri = ARGV[0].chomp
begin
  url = URI.encode_www_form_component(decoded_uri, enc = "UTF-8")
  title = "encoded into: #{url}"
rescue
  url = ""
  title = "invalid format"
end

result = create_result title, url

puts result.to_json

