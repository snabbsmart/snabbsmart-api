# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

game = Game.create!(
  name: 'Beer game',
  max_participants: 4
)

question1 = Question.create!(
  title: 'What does IPA stand for',
  game_id: game.id
)

Option.create!(
  title: 'Indian pale american',
  question_id: question1.id,
  correct: false
)

Option.create!(
  title: 'In poor alley',
  question_id: question1.id,
  correct: false
)

Option.create!(
  title: 'India pale ale',
  question_id: question1.id,
  correct: true
)

Option.create!(
  title: 'Indian promise armageddon',
  question_id: question1.id,
  correct: false
)

question2 = Question.create!(
  title: 'What does APA stand for',
  game_id: game.id
)

Option.create!(
  title: 'All pork alfred',
  question_id: question2.id,
  correct: false
)

Option.create!(
  title: 'American pale ale',
  question_id: question2.id,
  correct: true
)

Option.create!(
  title: 'American poor alcoholic',
  question_id: question2.id,
  correct: false
)

Option.create!(
  title: 'Another pedestrian allowed',
  question_id: question2.id,
  correct: false
)




