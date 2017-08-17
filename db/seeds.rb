# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ian = User.create(name: "Ian", email: "ian@gmail.com", password: "abcdef")
post1 = ian.posts.create(body: "I have a dream")
post2 = ian.posts.create(body: "A song to sing")
