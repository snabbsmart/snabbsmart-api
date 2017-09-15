class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :player, foreign_key: true
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end
