# frozen_string_literal: true

class PlayerSerializer < ActiveModel::Serializer
  attributes :nickname, :token
end
