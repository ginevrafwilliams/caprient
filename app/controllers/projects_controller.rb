class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @projects = Project.order(created_at: :desc)
  end

  def show
    @project = Project.find(params[:id])
  end
end
