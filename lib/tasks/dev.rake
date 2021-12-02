desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do
  require 'faker'
  require 'date'
  
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

  User.destroy_all

  50.times do
    user = User.new
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.password = "password"
    user.save
  end

  BusinessType.destroy_all

  10.times do
    business = BusinessType.new
    business.name = Faker::Company.type
    business.description = Faker::Company.industry
    business.save
  end

  Credential.destroy_all

  20.times do
    credential = Credential.new
    credential.name = Faker::Educator.degree
    credential.description = Faker::Company.catch_phrase
    credential.institution = Faker::Educator.university
    credential.date_received = Faker::Date.between(from: 20.years.ago, to: Date.today)
    credential.save
  end

  Need.destroy_all

  # Autism
  need = Need.new
  need.name = "Autism"
  need.description = Faker::Company.catch_phrase
  need.save

  # Asperger Syndrom
  need = Need.new
  need.name = "Asperger Syndrome"
  need.description = Faker::Company.catch_phrase
  need.save  

  # Cerebral Palsy
  need = Need.new
  need.name = "Cerebral Palsy"
  need.description = Faker::Company.catch_phrase
  need.save

  # Down Syndrome
  need = Need.new
  need.name = "Down Syndrome"
  need.description = Faker::Company.catch_phrase
  need.save

  # Dyslexia
  need = Need.new
  need.name = "Dyslexia"
  need.description = Faker::Company.catch_phrase
  need.save

  # Blindness
  need = Need.new
  need.name = "Blindness"
  need.description = Faker::Company.catch_phrase
  need.save

  # Deafness
  need = Need.new
  need.name = "Deafness"
  need.description = Faker::Company.catch_phrase
  need.save

  # ADHD
  need = Need.new
  need.name = "ADHD"
  need.description = Faker::Company.catch_phrase
  need.save

  # Cystic Fibrosis
  need = Need.new
  need.name = "Cystic Fibrosis"
  need.description = Faker::Company.catch_phrase
  need.save

  # Bipolar Disorder
  need = Need.new
  need.name = "Bipolar Disorder"
  need.description = Faker::Company.catch_phrase
  need.save

  # Paraplegia
  need = Need.new
  need.name = "Paraplegia"
  need.description = Faker::Company.catch_phrase
  need.save

  # Quadriplegia
  need = Need.new
  need.name = "Quadriplegia"
  need.description = Faker::Company.catch_phrase
  need.save

  # Traumatic Brain Injury
  need = Need.new
  need.name = "Traumatic Brain Injury"
  need.description = Faker::Company.catch_phrase
  need.save

  Language.destroy_all

  # English
  language = Language.new
  language.name = "English"
  language.save

  # Spanish
  language = Language.new
  language.name = "Spanish"
  language.save

  # Polish
  language = Language.new
  language.name = "Polish"
  language.save

  # Arabic
  language = Language.new
  language.name = "Arabic"
  language.save

  # Tagalog
  language = Language.new
  language.name = "Tagalog"
  language.save

  # Chinese
  language = Language.new
  language.name = "Chinese"
  language.save
  
  # Russian
  language = Language.new
  language.name = "Italian"
  language.save

  # Portuguese
  language = Language.new
  language.name = "Portuguese"
  language.save

  # French
  language = Language.new
  language.name = "French"
  language.save

  # Filipino
  language = Language.new
  language.name = "Filipino"
  language.save

  # Ukrainian
  language = Language.new
  language.name = "Filipino"
  language.save

  # ASL
  language = Language.new
  language.name = "ASL"
  language.save

  Availability.destroy_all

  50.times do
    availability = Availability.new
    day = rand(7)
    availability.day = Date::DAYNAMES[day]
    availability.open_time = Faker::Time.between(from: DateTime.now-1, to: DateTime.now)
    availability.close_time = Faker::Time.between(from: DateTime.now-1, to: DateTime.now)
    availability.save
  end

  Review.destroy_all

  50.times do
    review = Review.new
    review.title = Faker::Restaurant.name
    review.rating = rand(4)
    review.description = Faker::Restaurant.review
    review.provider_id = Provider.all.sample.id
    review.author_id = User.all.sample.id
    review.save
  end

end
