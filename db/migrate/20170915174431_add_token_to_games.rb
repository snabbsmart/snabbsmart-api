class AddTokenToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :token, :string
  end
end
