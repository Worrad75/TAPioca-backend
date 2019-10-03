User.destroy_all
Score.destroy_all
Game.destroy_all

user_a = User.create!(username: "Darrow")
user_b = User.create!(username: "Belinda")
user_c = User.create!(username: "Daniel")
puts "done making users"

score_a = Score.create!(tally: 350)
score_b = Score.create!(tally: 250)
score_c = Score.create!(tally: 450)
puts "done making scores"

game_a = Game.create!(score_id: score_a.id, user_id: user_a.id)
game_b = Game.create!(score_id: score_b.id, user_id: user_b.id)
game_c = Game.create!(score_id: score_c.id, user_id: user_c.id)
puts "done making games"