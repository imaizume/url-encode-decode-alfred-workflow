def create_result(title, url)
{
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
end
