# frozen_string_literal: true

class PlayersController < ApplicationController

  def create
    @game = Game.find_by!(token: params[:token])
  end

end
