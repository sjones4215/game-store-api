class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :price
      t.string :developer
      t.string :parental_rating
      t.belongs_to :store, foreign_key: true

      t.timestamps
    end
  end
end
