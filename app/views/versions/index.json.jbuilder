json.array!(@versions) do |version|
  json.extract! version, :id, :title, :price, :brand, :model_id, :engine_id
  json.url version_url(version, format: :json)
end
