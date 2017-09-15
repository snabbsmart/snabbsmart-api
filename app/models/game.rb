# frozen_string_literal: true

class Game < ApplicationRecord
  validates :token, presence: true
end
