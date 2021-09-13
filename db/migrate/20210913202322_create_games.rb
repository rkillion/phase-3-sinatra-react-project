class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :github_link
      t.string :preview_href
      t.string :description
      t.string :language
      t.string :sources
      t.boolean :has_comments?
      t.string :theme
      t.string :game_type
      t.integer :file_size
      t.boolean :keyboard?
      t.boolean :controller?
      t.belongs_to :developer, foreign_key: true
    end
  end
end
