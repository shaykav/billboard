class ChartsController < ApplicationController

  before_action :authorize

  def index

    @charts = Chart.fetch

  end

  def show
    chart_name = params[:chart_name]

    @songs = Song.fetch(chart_name.parameterize)
  end
end
