require 'faker'
puts "Cleaning database..."
Dessin.destroy_all
User.destroy_all

p "creating user"
user = User.create!(email: "test1@mail.com", password: "test123")

p "creating dessin"
10.times do
  dessin = Dessin.create!(
                          name: Faker::Name.name,
                          description: Faker::Lorem.sentences(number: 1),
                          image: Faker::LoremFlickr.image,
                          user_id: user.id
                          )
 puts "10 dessins created"
end
puts 'Finished!'
