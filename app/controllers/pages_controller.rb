class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @projects = Project.limit(5).order('id desc')
  end
end
