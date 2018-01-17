class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: "Music Reivew API" }
  end
end
