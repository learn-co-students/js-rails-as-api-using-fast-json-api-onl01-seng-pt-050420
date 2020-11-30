class SightingsController < ApplicationController

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end

  def show
    sighting = Sighting.find_by(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting)
  end
end
