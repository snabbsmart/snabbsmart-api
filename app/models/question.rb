class Question < ApplicationRecord
  belongs_to :game
  has_many :options

  scope :answered, ->() { where answered: true }
  scope :unanswered, ->() { where answered: false }

  def all_player_answered
    game.players
        .joins(answers: :option)
        .where(options: { id: option_ids })
        .size == game.max_participants
  end
end
