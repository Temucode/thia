require 'faker'
require "open-uri"

puts "Cleaning database..."
Dessin.destroy_all
User.destroy_all

images_seed = []

p "creating user"
user = User.create!(email: "test1@mail.com", password: "test123")

p "creating dessin"

images_seed =[ "./app/assets/images/img-thia.jpeg",
              "./app/assets/images/img-thia1.jpeg",
              "./app/assets/images/img-thia2.jpeg",
              "./app/assets/images/img-thia3.jpeg",
              "./app/assets/images/img-thia4.jpeg",
              "./app/assets/images/img-thia5.jpeg",
              "./app/assets/images/img-thia6.jpeg",
              ]

10.times do
  file = URI.open(images_seed.sample)
  dessin = Dessin.create!(
                          name: Faker::Name.name,
                          description: Faker::Lorem.sentences(number: 1),
                          user_id: user.id
                          )
  dessin.image.attach(io: file, filename: "nes.png", content_type: "image/png")
 puts "1 dessins created"
end
puts 'Finished!'
