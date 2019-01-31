# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
require 'faker'
10.times do
    user = User.create!(first_name: Faker::Company.name, last_name: Fakker::Company.name, email: Faker::Internet.email)
end

5.times do |i|
    Category.create!(name: "category de merde numéro #{i}")
end


9.times do |index|
    Article.find(index+1).update( category_id: rand(1..5))
end
8.times do |i|
    User.create(first_name: "user #{i+3}", last_name: "connard", email: "user_#{i}.connard@gmail.com")
end

15.times do |i|
    Comment.create(article_id: rand(1..10), user_id: rand(1..10), content: "bla"*i)
end

15.times do 
    Like.create(article_id: rand(1..10), user_id: rand(1..10))
end
=end
