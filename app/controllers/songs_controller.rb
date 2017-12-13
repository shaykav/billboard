class SongsController < ApplicationController

  def index
    chart_name = params[:chart_name]

    @songs = Song.fetch(chart_name)
  end

  def create
    if params[:songs].present?
      # this line will iterate over the params[:songs] array
      params[:songs].each do |song_name|
      # for each song you create a new Song object
      s = Song.new
      # change .name to the attribute you have in the database
      s.name = song_name
      s.user_id = current_user.id
      s.save!
      end
    end
    redirect_to 
  end
end
