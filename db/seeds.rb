# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(first_name: "Russel B", last_name: "Sprout", email: "leafy@greens.com")
user2 = User.create(first_name: "Terry", last_name: "Gibson", email: "iron@lung.com")
user3 = User.create(first_name: "Delphine", last_name: "Cocheran")

project1 = Challenge.create(title: "Bangers & Mosh!", description: "British Punk Bed and Breakfast startup", number_of_users: 2)
project2 = Challenge.create(title: "Antigravity Tapestry", number_of_users: 2)
project3 = Challenge.create(title: "Local Zap", description: "Liven up your neighborhood for the weekend.", number_of_users: 3)
project4 = Challenge.create(title: "Inverted-Phase Gastronomy", description: "Enjoy brussels sprouts like never before", number_of_users: 2)

Collaboration.create(user_id: 1, challenge_id: 4)
Collaboration.create(user_id: 3, challenge_id: 4)
Collaboration.create(user_id: 2, challenge_id: 2)
Collaboration.create(user_id: 3, challenge_id: 2)
Collaboration.create(user_id: 1, challenge_id: 1)
Collaboration.create(user_id: 2, challenge_id: 1)
Collaboration.create(user_id: 1, challenge_id: 3)
Collaboration.create(user_id: 2, challenge_id: 3)
Collaboration.create(user_id: 3, challenge_id: 3)
