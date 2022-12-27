require 'faker'
require "open-uri"

puts "Cleaning database..."
Dessin.destroy_all
User.destroy_all

p "creating user"
user = User.create!(email: "test1@mail.com", password: "test123")

p "creating dessin"
10.times do
  file = URI.open("./app/assets/images/img-thia.jpeg")
  dessin = Dessin.create!(
                          name: Faker::Name.name,
                          description: Faker::Lorem.sentences(number: 1),
                          user_id: user.id
                          )
  dessin.image.attach(io: file, filename: "nes.png", content_type: "image/png")
 puts "1 dessins created"
end
puts 'Finished!'
