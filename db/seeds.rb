require 'faker'
#ensures a total reset of data 
#clearing all previous records before reseeding

Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
5.times do 
    Freebie.create(
        value: rand(0...50),
        item_name: Faker::Game.title,
        company_id: Company.all.sample.id, #Company.ids.sample
        dev_id: Dev.all.sample.id #sample takes a random record from query
    )
end 

puts "Seeding done!"
