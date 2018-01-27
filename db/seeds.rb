# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create! :name => 'First guy', :email => '1@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
user1 = User.create! :name => 'Second gal', :email => '2@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
user2 = User.create! :name => 'Third guy', :email => '3@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
