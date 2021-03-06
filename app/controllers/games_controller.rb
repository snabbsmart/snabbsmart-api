# frozen_string_literal: true

class GamesController < ApplicationController
  def show
    @game = Game.find_by(token: params[:token])
    render json: @game
  end

  def start
    GameChannel.start(Game.find_by(token: params[:token]))
  end
end
