class Game < ApplicationRecord
  belongs_to :store
  has_many :reviews, dependent: :destroy
  validates :name, presence: true


  def self.search(search)
      if search
        game_find = Game.find_by(title: search )
        if game
          self.where(game_id: game_find)
        else
         @games = Game.all
        end
      else
      @games.all = Games.all
    end
  end
end
