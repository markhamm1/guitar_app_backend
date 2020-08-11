class Api::GuitarsController < ApplicationController
  def index
    @guitar = Guitar.all
    render 'index.json.jb'
  end

  def show
    @guitar = Guitar.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
