class SongsController < ApplicationController
  def new
    @song = Song.new
    @song.albums.build
    @song.artists.build
    @song.genres.build
  end
  def create
    #raise params[:song].inspect
    @song = Song.new(params[:song])
    if @song.save
      redirect_to player_path
    else
      render :new
    end
  end
end
