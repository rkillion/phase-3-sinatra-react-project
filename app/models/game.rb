class Game < ActiveRecord::Base
    belongs_to :developer
    has_many :game_features, dependent: :destroy
    has_many :features, through: :game_features
end