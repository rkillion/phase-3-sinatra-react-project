require "pry"
class GamesController < ApplicationController
    # set up the request for games, developers, and features
  get "/games" do
    serialize(Game.all.limit(20))
  end

  get "/games/:id" do
    serialize(Game.find(params[:id]))
  end

  post "/games" do
    @developer = Developer.find_or_create_by(name: developer_params["name"]) do |developer|
        developer[:github_profile] = developer_params["github_profile"]
    end
    @game = Game.create(game_params)
    @game.update(developer_id: @developer.id)
    params["game_features"].map do |entry|
        GameFeature.create(
            feature_id: Feature.find_by(title: entry["feature"]).id,
            game_id: @game.id,
            feature_explanation: entry["feature_explanation"]
        )
    end
    serialize(@game)
  end

  private

  def game_params
    allowed_params = %w(title github_link preview_href description language has_comments? theme game_type file_size keyboard? controller?)
    params.select { |param, value| allowed_params.include?(param)}
  end

  def developer_params
    allowed_params = %w(name github_profile)
    params["developer"].select { |param, value| allowed_params.include?(param)}
  end

  def serialize(objects)
    objects.to_json(include: [:developer, {
      game_features: {
        include: :feature
      }
    }])
  end
end