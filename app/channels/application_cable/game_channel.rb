class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from "game_#{params[:token]}"
  end

  # IOS
  def self.join_game(game, player)
    ActionCable.server.broadcast(
      "game_#{game.token}",
      player: player
    )
  end

  # IOS
  def answer(data)
    @answer = Answer.new(
      player_id: Player.find_by(token: data['token']),
      question_id: data['questionId'],
      option_id: data['optionId']
    )

    if @answer.save
      question = Question.find(data['questionId'])
      if question.all_player_answered
        question.update_attributes(answered: true)
      end
    end
  end

  # WEB
  def next_question(data)
    game = Game.find_by(token: data['token'])

    ActionCable.server.broadcast(
      "game_#{data['token']}",
      eventName: 'startQuestion',
      question: game.questions.unanswered.first
    )
  end

  # WEB
  def self.start(game)
    ActionCable.server.broadcast(
      "game_#{game.token}",
      eventName: 'startQuestion',
      questionId: game.questions.first.id,
      timestamp: Time.now
    )
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

end
