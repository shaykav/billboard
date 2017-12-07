class ChartsController < ApplicationController

  before_action :authorize

  def index

    @charts = Chart.fetch

  end

  def show
    chart_name = params[:chart_name]
    @chart_name = params[:chart_name].gsub("-", " ").humanize.upcase rescue ' '

    @songs = Song.fetch(chart_name.parameterize)

    @charts = Chart.fetch
  end
end
