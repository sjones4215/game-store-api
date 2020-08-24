class GamesController < ApplicationController
    before_action :set_game, only:[:show, :update, :destroy]

    def index
        @games = Game.search(params(:search))
    end

    def show 
        render json: { movie: @movie, review: @review} 
    end

    def create 
        if @game.save
            render json: @game, status: :created, location: @game
        else
            render json: @game.errors, status: :unproccessable_entity
        end
    end
    
    def update(game_params)
       if @game.update
            render json: @game
       else 
            render json: @game.errors, status: :unproccessable_entity
       end
    end

    def destroy
        @game.destroy
    end

private 

    
    def set_game
        @game = Game.find(params(:id))
    end

    def game_params
        params.require(:game).permit(:title, :price, :developer, :rating, :search)
    end

end
