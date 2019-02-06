# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do |index|
  Citie.create(
    city_name: Faker::Address.city,
    zip_code: Faker::Address.zip

  )
end

10.times do |index|
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::OnePiece.quote,
    email: Faker::Internet.email('#{first_name}'),
    age: rand(18..60),
    citie_id: rand(Citie.first.id..Citie.last.id)
  )
end

10.times do |index|
  Tag.create(
    name: Faker::Artist.name,
  )
end

20.times do |index|
  Gossip.create(
    title: Faker::Book.title,
    content: Faker::OnePiece.quote,
    date: Faker::Date.forward(30),
    user_id: rand(User.first.id..User.last.id),
    tag_id: rand(Tag.first.id..Tag.last.id)
  )
end

10.times do |index|
  Tag.update(
    gossip_id: rand(Gossip.first.id..Gossip.last.id)
  )
end

20.times do |index|
  Comment.create(
    body: Faker::OnePiece.quote,
    user_id: rand(User.first.id..User.last.id),
    gossip_id: rand(Gossip.first.id..Gossip.last.id),
  )
end

20.times do |index|
  Like.create(
    user_id: rand(User.first.id..User.last.id),
    gossip_id: rand(Gossip.first.id..Gossip.last.id),
  )
end
