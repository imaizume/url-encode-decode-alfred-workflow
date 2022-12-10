require 'json'
require 'uri'

encoded_uri = ARGV[0].chomp
begin
  url = URI.decode_www_form_component(encoded_uri, enc = "UTF-8")
  title = "decoded into: #{url}"
rescue
  url = ""
  title = "invalid format"
end

result = {
  skipknowledge: true,
  items: [
    title: title,
    subtitle: "Press Enter to Copy",
    arg: url,
    valid: !url.empty?,
    autocomplete: url,
    icon: {
      path: "./icon.png"
    }
  ]
}

begin
  json = result.to_json.encode("UTF-8")
rescue
  result[:items] = {
    title: "Failed to convert to JSON",
    subtitle: "Failed to convert to JSON",
    arg: "",
    valid: !url.empty?,
    autocomplete: url,
    icon: {
      path: "./icon.png"
    }
  }
  json = result.to_json.encode("UTF-8")
end

puts json

