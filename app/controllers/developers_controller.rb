class DevelopersController < ApplicationController
  get "/developers" do
    serialize(Developer.all)
  end

  get "/developers/:id" do
    serialize(Developer.find(params[:id]))
  end

  def serialize(objects)
    objects.to_json()
  end
end