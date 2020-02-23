class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @projects = Project.all
  end
end
