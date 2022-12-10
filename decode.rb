require 'json'
require 'uri'
require './create_result'

encoded_uri = ARGV[0].chomp
begin
  url = URI.decode_www_form_component(encoded_uri, enc = "UTF-8")
  title = "decoded into: #{url}"
rescue
  url = ""
  title = "invalid format"
end

result = create_result title, url

puts result.to_json

