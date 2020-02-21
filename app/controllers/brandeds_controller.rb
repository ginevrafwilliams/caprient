class BrandedsController < ApplicationController
  def index
    @brandeds = Branded.all
  end

  def show
    @branded = Branded.find(params[:id])
  end
end
