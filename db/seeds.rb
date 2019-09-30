User.destroy_all
# Score.destroy_all
# Game.destroy_all

user_a = User.create!(username: "Darrow", password_digest: "abc")
user_b = User.create!(username: "Belinda", password_digest: "abc")
user_b = User.create!(username: "Daniel", password_digest: "abc")
puts "done making users"

# score_a = Score.create!(tally: 250)
# score_b = Score.create!(tally: 350)
# score_c = Score.create!(tally: 450)
# puts "done making scores"

# game_a = Game.create!(score: score_a, user: user_a)
# game_b = Game.create!(score_id: score_b.id, user_id: user_b.id)
# game_b = Game.create!(score_id: score_b.id, user_id: user_b.id)
# puts "done making games"