json.array!(@priority_conditions) do |priority_condition|
  json.extract! priority_condition, :id, :name
  json.url priority_condition_url(priority_condition, format: :json)
end
