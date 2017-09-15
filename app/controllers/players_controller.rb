# frozen_string_literal: true

class PlayersController < ApplicationController

  def create
    @game = Game.find_by!(token: params[:token])

    @player = @game.players.new(nickname: params[:nickname])
    if @player.save
      render json: @player
    else
      render json: { errors: @player.errors }, status: :bad_request
    end
  end
end
