class Feature < ActiveRecord::Base
    has_many :games, through: :game_features
end