# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Movie.create!(title: Faker::Name.name,
               director: Faker::Name.name,
               runtime_in_minutes: rand(0..120),
               description: Faker::Lorem.paragraph,
               release_date: Faker::Date.forward(rand(1..20)),
               image: "Cinderella_Photo.jpg"
               )
end 