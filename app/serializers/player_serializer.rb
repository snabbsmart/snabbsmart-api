# frozen_string_literal: true

class PlayerSerializer < ActiveModel::Serializer
  attributes :nickname
  belongs_to :game
end
