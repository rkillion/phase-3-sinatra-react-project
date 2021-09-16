class FeaturesController < ApplicationController
    get "/features" do
      serialize(Feature.all)
    end
  
    get "/features/:id" do
      serialize(Feature.find(params[:id]))
    end
  
    def serialize(objects)
      objects.to_json()
    end
  end