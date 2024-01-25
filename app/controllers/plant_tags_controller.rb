class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    # find a plant
    @plant = Plant.find(params[:plant_id])
    # find a tag
    @tag = Tag.find(params[:plant_tag][:tag])
    # create a plant_tag with the plant and the tag
    @plant_tag = PlantTag.new(plant: @plant, tag: @tag)
    # save it and redirect
    if @plant_tag.save
      redirect_to garden_path(@plant.garden)
    end
  end
end
