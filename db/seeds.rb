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


User.first.posts.create(body: "Following my review of the floorstanding Magico S5 Mk.II last February, I spent some time with two-way stand-mounted speakers from Aerial Acoustics, Bowers & Wilkins, and Dynaudio. As much as I appreciated the small speakers' virtues, I found myself missing the big Magico's bass extension and ability to play loud; my next loudspeaker review, therefore, would be of another floorstander.", wall_id: User.first.id)
User.all.sample.posts.create(body: "If Stereophile gave an award for Loudspeaker We've Most Frequently Reviewed, the hands-down winner would have to be the Quad ESL. The list of past and present Stereophile contributors who've written about the ESL's various incarnations includes John Atkinson, Martin Colloms, Anthony H. Cordesman, Art Dudley, Larry Greenhill, J. Gordon Holt, Ken Kessler, Dick Olsher, Herb Reichert, William Sommerwerck, Steven Stone, and Sam Tellig", wall_id: User.all[3].id)
User.all.sample.posts.create(body: "If, like me, you're a dues-paying audiophile who's circumnavigated the upgrade block a few times, you've seen a lot of gear and set up many systems. I've carried 80-lb line conditioners up the six knee-crunching flights to my bachelor's penthouse, managed 50-lb loudspeakers downstairs to a waiting van, and made more trips to FedEx than I can count. I've owned dozens of audio products and reviewed dozens more.", wall_id: User.last.id)
User.first.posts.create(body: "Following my review of the floorstanding Magico S5 Mk.II last February, I spent some time with two-way stand-mounted speakers from Aerial Acoustics, Bowers & Wilkins, and Dynaudio. As much as I appreciated the small speakers' virtues, I found myself missing the big Magico's bass extension and ability to play loud; my next loudspeaker review, therefore, would be of another floorstander.", wall_id: User.first.id)
User.all.sample.posts.create(body: "If Stereophile gave an award for Loudspeaker We've Most Frequently Reviewed, the hands-down winner would have to be the Quad ESL. The list of past and present Stereophile contributors who've written about the ESL's various incarnations includes John Atkinson, Martin Colloms, Anthony H. Cordesman, Art Dudley, Larry Greenhill, J. Gordon Holt, Ken Kessler, Dick Olsher, Herb Reichert, William Sommerwerck, Steven Stone, and Sam Tellig", wall_id: User.all[3].id)
User.all.sample.posts.create(body: "If, like me, you're a dues-paying audiophile who's circumnavigated the upgrade block a few times, you've seen a lot of gear and set up many systems. I've carried 80-lb line conditioners up the six knee-crunching flights to my bachelor's penthouse, managed 50-lb loudspeakers downstairs to a waiting van, and made more trips to FedEx than I can count. I've owned dozens of audio products and reviewed dozens more.", wall_id: User.last.id)
User.first.posts.create(body: "Following my review of the floorstanding Magico S5 Mk.II last February, I spent some time with two-way stand-mounted speakers from Aerial Acoustics, Bowers & Wilkins, and Dynaudio. As much as I appreciated the small speakers' virtues, I found myself missing the big Magico's bass extension and ability to play loud; my next loudspeaker review, therefore, would be of another floorstander.", wall_id: User.first.id)
User.all.sample.posts.create(body: "If Stereophile gave an award for Loudspeaker We've Most Frequently Reviewed, the hands-down winner would have to be the Quad ESL. The list of past and present Stereophile contributors who've written about the ESL's various incarnations includes John Atkinson, Martin Colloms, Anthony H. Cordesman, Art Dudley, Larry Greenhill, J. Gordon Holt, Ken Kessler, Dick Olsher, Herb Reichert, William Sommerwerck, Steven Stone, and Sam Tellig", wall_id: User.all[3].id)
User.all.sample.posts.create(body: "If, like me, you're a dues-paying audiophile who's circumnavigated the upgrade block a few times, you've seen a lot of gear and set up many systems. I've carried 80-lb line conditioners up the six knee-crunching flights to my bachelor's penthouse, managed 50-lb loudspeakers downstairs to a waiting van, and made more trips to FedEx than I can count. I've owned dozens of audio products and reviewed dozens more.", wall_id: User.last.id)


user_f.sent_messages.create(sender_id: user_f.id, recipient_id: user_l.id, body: "I have a dream")
user_f.sent_messages.create(sender_id: user_f.id, recipient_id: user_l.id, body: "A song to sing")

user_l.sent_messages.create(sender_id: user_l.id, recipient_id: user_f.id, body: "Stop singing")

