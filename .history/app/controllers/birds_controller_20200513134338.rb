# frozen_string_literal: true

class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find_by(id: params[:id])
    # render json: bird
    # render json: { id: bird.id, name: bird.name, species: bird.species }
    render json: bird.slice(:id, :name)
  end
end
