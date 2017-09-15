class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :title
      t.references :question, foreign_key: true
      t.boolean :correct

      t.timestamps
    end
  end
end
