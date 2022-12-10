require 'uri'

encoded_uri = ARGV[0].chomp
begin
  puts URI.decode_www_form_component(encoded_uri)
rescue
  puts ""
end

