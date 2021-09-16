class GamesController < ApplicationController
    # set up the request for games, developers, and features
  get "/games" do
    serialize(Game.all.limit(20))
  end

  get "/games/:id" do
    serialize(Game.find(params[:id]))
  end

  def serialize(objects)
    objects.to_json(include: [:developer, {
      game_features: {
        include: :feature
      }
    }])
  end
end