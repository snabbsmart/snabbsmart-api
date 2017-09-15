# frozen_string_literal: true

class GameSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :options
end
