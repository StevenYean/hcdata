json.array!(@topics) do |topic|
  json.extract! topic, :id, :priorityConditionID, :topicTitle, :intervention, :phase, :priorityConditionID, :phaseDetails, :comparators, :healthImpact, :patientPopulation, :status
  json.url topic_url(topic, format: :json)
end
