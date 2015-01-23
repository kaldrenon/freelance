json.array!(@contracts) do |contract|
  json.extract! contract, :id, :name, :freelancer, :organization, :event, :details
  json.url contract_url(contract, format: :json)
end
