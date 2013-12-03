json.array!(@options) do |option|
  json.extract! option, :name, :price_in_cents
  json.url option_url(option, format: :json)
end
