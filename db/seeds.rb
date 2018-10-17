# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Russel B", last_name: "Sprout", password: "asdf123", email: "leafy@greens.com")
User.create(first_name: "Terry", last_name: "Gibson", password: "asdf123", email: "iron@lung.com")
User.create(first_name: "Delphine", last_name: "Cocheran", password: "asdf123", email: "chalDets@flavin.net")
User.create(first_name: "Sasha", last_name: "Trembley", password: "asdf123", email: "hillmount@school.edu")
User.create(first_name: "Nadine", last_name: "Port", password: "asdf123", email: "drafter@highland.edu")


Challenge.create(title: "Bangers & Mosh!", description: "British Punk Bed and Breakfast startup")
Challenge.create(title: "Antigravity Tapestry")
Challenge.create(title: "Local Zap", description: "Liven up your neighborhood for the weekend.")
Challenge.create(title: "Inverted-Phase Gastronomy", description: "Enjoy brussels sprouts like never before")

Collaboration.create(user_id: 1, challenge_id: 4)
Collaboration.create(user_id: 3, challenge_id: 4)
Collaboration.create(user_id: 5, challenge_id: 4)
Collaboration.create(user_id: 2, challenge_id: 2)
Collaboration.create(user_id: 3, challenge_id: 2)
Collaboration.create(user_id: 4, challenge_id: 2)
Collaboration.create(user_id: 1, challenge_id: 1)
Collaboration.create(user_id: 2, challenge_id: 1)
Collaboration.create(user_id: 5, challenge_id: 1)
Collaboration.create(user_id: 1, challenge_id: 3)
Collaboration.create(user_id: 2, challenge_id: 3)
Collaboration.create(user_id: 3, challenge_id: 3)
Collaboration.create(user_id: 4, challenge_id: 3)
Collaboration.create(user_id: 5, challenge_id: 3)

Task.create(name: "create menu", description: "do this first", due_date: "near future", user_id: 1, challenge_id: 1)
Task.create(name: "Phase 2.3", description: "exactly as it sounds", due_date: "near future", user_id: 2, challenge_id: 2)
Task.create(name: "scout the area", description: "find nearby powerlines", due_date: "near future", user_id: 1, challenge_id: 3)
Task.create(name: "hire a chemist", description: "a grad student at uni will work in a pinch", due_date: "near future", user_id: 1, challenge_id: 4)
Task.create(name: "organize tasks", description: "re-order this list", due_date: "near future", user_id: 2, challenge_id: 1)
Task.create(name: "make to-do list", description: "top priority", due_date: "near future", user_id: 3, challenge_id: 2)
Task.create(name: "pick a weekend", description: "preferrably a long holiday", due_date: "near future", user_id: 2, challenge_id: 3)
Task.create(name: "Acquire ingredients", description: "peruse industrial overstock sites", due_date: "near future", user_id: 3, challenge_id: 4)
Task.create(name: "get permit", description: "do this first too", due_date: "near future", user_id: 5, challenge_id: 1)
Task.create(name: "OSHA Compliance", description: "Safety Third!", due_date: "near future", user_id: 4, challenge_id: 2)
Task.create(name: "curate a playlist", description: "pick only the finest jams", due_date: "near future", user_id: 3, challenge_id: 3)
Task.create(name: "get USDA approval", description: "whenever most covenient", due_date: "near future", user_id: 5, challenge_id: 4)
