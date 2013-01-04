class PlayersController < ApplicationController

  def index
    @user = current_user
    @songs = Song.all
    @user_songs = current_user.songs
  end

end
