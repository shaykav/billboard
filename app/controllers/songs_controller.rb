class SongsController < ApplicationController

  def index
    chart_name = params[:chart_name]

    @songs = Song.fetch(chart_name)
  end
end
