json.array!(@freelancers) do |freelancer|
  json.extract! freelancer, :id, :name, :email, :phone, :bio
  json.url freelancer_url(freelancer, format: :json)
end
