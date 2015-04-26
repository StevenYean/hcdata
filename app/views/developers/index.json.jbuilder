json.array!(@developers) do |developer|
  json.extract! developer, :id, :topic_ID, :man_ID
  json.url developer_url(developer, format: :json)
end
