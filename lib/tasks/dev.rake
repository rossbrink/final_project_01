desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do
  require 'faker'
  Provider.destroy_all

  50.times do
    provider = Provider.new
    provider.first_name = Faker::Name.first_name
    provider.last_name = Faker::Name.last_name
    provider.organization_name = Faker::Company.name
    provider.password = "password"
    provider.image = "https://robohash.org/" + rand(50).to_s
    provider.price = Faker::Number.between(from: 0.0, to: 50.0).round(2)
    provider.address = Faker::Address.full_address
    provider.email = Faker::Internet.email
    provider.description = Faker::Company.catch_phrase
    provider.save
  end
  
end
