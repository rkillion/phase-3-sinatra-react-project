class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # set up the request for games, developers, and features
  get "/games" do
    format_game(Game.all.limit(20))
  end

  get "/games/:id" do
    format_game(Game.find(params[:id]))
  end

  def format_game(objects)
    objects.to_json(include: [:developer, {
      game_features: {
        include: :feature
      }
    }])
  end
  # games should include the info for the developer and the features

end
