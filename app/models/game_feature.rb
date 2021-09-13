class GameFeature < ActiveRecord::Base
    #this is our join table
    belongs_to :feature
    belongs_to :game
end