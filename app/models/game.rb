class Game < ActiveRecord::Base
    belongs_to :developer
    has_many :features, through: :game_features
end