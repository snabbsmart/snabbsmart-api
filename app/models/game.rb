# frozen_string_literal: true

class Game < ApplicationRecord
  before_save :generate_token

  private

  def generate_token
    self.token = (SecureRandom.random_number(9e5) + 1e5).to_i
  end
end
