json.array!(@items) do |item|
  json.extract! item, :id, :title, :price, :version_id
  json.url item_url(item, format: :json)
end
