class BrandedsController < ApplicationController
  def index
    @brandeds = Branded.all
    @brandeds = Branded.order(created_at: :desc)
  end

  def show
    @branded = Branded.find(params[:id])
  end
end
