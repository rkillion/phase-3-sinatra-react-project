class DevelopersController < ApplicationController
  get "/developers" do
    format_developer(Developer.all)
  end

  get "/developers/:id" do
    format_developer(Developer.find(params[:id]))
  end

  def format_developer(objects)
    objects.to_json()
  end
end