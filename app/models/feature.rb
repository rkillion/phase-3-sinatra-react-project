class Feature < ActiveRecord::Base
    has_many :games, through: :game_features
    has_many :game_features
end