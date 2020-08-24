class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :body
      t.float :rating
      t.belongs_to :game, foreign_key: true
      
      t.timestamps
    end
  end
end
