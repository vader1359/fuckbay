# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.generate_users(10)

user_f = User.first
user_l = User.last

2.times {User.all.sample.posts.create(body: "What ever you want", wall_id: User.first.wall.id)}
2.times {User.all.sample.posts.create(body: "Do you need help", wall_id: User.all[3].wall.id)}
2.times {User.all.sample.posts.create(body: "Me, I need help", wall_id: User.last.wall.id)}


user_f.sent_messages.create(sender_id: user_f.id, recipient_id: user_l.id, body: "I have a dream")
user_f.sent_messages.create(sender_id: user_f.id, recipient_id: user_l.id, body: "A song to sing")

user_l.sent_messages.create(sender_id: user_l.id, recipient_id: user_f.id, body: "Stop singing")

