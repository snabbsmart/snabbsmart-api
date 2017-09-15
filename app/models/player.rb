class Player < ApplicationRecord
  belongs_to :game
  has_many :answers

  validates :nickname, uniqueness: { scope: [:game_id] }

  before_save :generate_token

  private

  def generate_token
    self.token = SecureRandom.base58(32)
  end
end
