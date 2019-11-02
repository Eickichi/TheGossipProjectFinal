# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
JoinTableTagGossip.destroy_all
JoinTablePrivateMessageUser.destroy_all
PrivateMessage.destroy_all

10.times do
	City.create(
		name: Faker::JapaneseMedia::OnePiece.location,
		zip_code: Faker::Address.zip_code)
end

10.times do
	User.create(
		first_name: Faker::JapaneseMedia::OnePiece.character,
		last_name: Faker::JapaneseMedia::DragonBall.character,
		description: Faker::TvShows::Friends.quote,
		email: Faker::Internet.email,
		age: rand(17..35),
		city_id: City.all.sample.id)
end

20.times do
	Gossip.create(
		title: Faker::Book.title,
		content: Faker::TvShows::Friends.quote,
		author_id: User.all.sample.id)
end

10.times do
	Tag.create(
		title: "##{Faker::TvShows::DrWho.specie}")
end

20.times do
	JoinTableTagGossip.create(
		gossip: Gossip.all.select(:id).sample,
		tag: Tag.all.select(:id).sample)
end

10.times do
	PrivateMessage.create(
		content: Faker::TvShows::DrWho.quote,
		sender_id: User.all.sample.id)
end

# 20.times do |index|
# 	JoinTablePrivateMessageUser.create(
# 		received_message_id: PrivateMessage.find((index%10) + 1),
# 		user_id: User.all.sample.id)
# end

puts "C'est bon c'est ok, jeune pomme"
