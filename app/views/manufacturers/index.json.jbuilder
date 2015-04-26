json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :id, :name, :location
  json.url manufacturer_url(manufacturer, format: :json)
end
