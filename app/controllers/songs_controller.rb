class SongsController < ApplicationController

  def index
    chart_name = params[:chart_name]

    @songs = Song.fetch(chart_name)
  end

  def favorites
    @song = Song.all
  end

  def create
    if params[:songs].present?
      params[:songs].each do |song_name|
        s = Song.new
        s.name = song_name
        s.user_id = current_user.id
        s.save!
      end
    end
    redirect_to favorites_path
  end
end
