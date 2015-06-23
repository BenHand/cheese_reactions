json.array!(@cheeses) do |cheese|
  json.extract! cheese, :id, :name, :kind, :rating, :description, :pic, :user_id
  json.url cheese_url(cheese, format: :json)
end
