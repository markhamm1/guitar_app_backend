class Api::GuitarsController < ApplicationController
  def index
    @guitar = Guitar.all
    render 'index.json.jb'
  end

  def show
    @guitar = Guitar.find_by(id: params[:id])
    render 'show.json.jb'
  end
  
  def create
    @guitar = Guitar.create(
      make: params[:make],
      model: params[:model],
      image_url: params[:image_url]
    )
    render 'show.json.jb'
  end

  def update
    @guitar = Guitar.find_by(id: params[:id])
    @guitar.update(
      make: params[:make] || @guitar.make,
      model: params[:model] || @guitar.model,
      image_url: params[:image_url] || @guitar.image_url,
    )
    @guitar.save
    render 'show.json.jb'
  end

  def destroy
    @guitar = Guitar.find_by(id: params[:id])
    @guitar.destroy
    render json: {message: "The item has been deleted"}
  end
end
