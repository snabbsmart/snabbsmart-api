class Player < ApplicationRecord
  belongs_to :game

  validates :nickname, uniqueness: { scope: [:game_id] }
end
