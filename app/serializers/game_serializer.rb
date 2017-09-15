# frozen_string_literal: true

class GameSerializer < ActiveModel::Serializer
  attributes :name, :max_participants, :token
  has_many :players
end
