class ReportsController < ApplicationController
  def index
    @reports = Report.all
    @reports = Report.order(created_at: :desc)
  end
end
