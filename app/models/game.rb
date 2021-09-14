class Game < ActiveRecord::Base
    belongs_to :developer
    has_many :game_features
    has_many :features, through: :game_features
end