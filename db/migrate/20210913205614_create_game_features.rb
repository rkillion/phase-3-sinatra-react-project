class CreateGameFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :game_features do |t|
      t.belongs_to :feature, foreign_key: true
      t.belongs_to :game, foreign_key: true
      t.string :feature_explanation
    end
  end
end
