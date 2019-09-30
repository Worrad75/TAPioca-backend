class Score < ApplicationRecord
  has_one :game
  has_one :user, through: :game 
end
