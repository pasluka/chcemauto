json.array!(@models) do |model|
  json.extract! model, :title, :id
end
