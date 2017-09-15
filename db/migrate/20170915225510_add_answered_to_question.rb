class AddAnsweredToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :answered, :boolean
  end
end
