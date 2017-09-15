class Player < ApplicationRecord
  belongs_to :game
  has_many :answers

  validates :nickname, uniqueness: { scope: [:game_id] }
end
