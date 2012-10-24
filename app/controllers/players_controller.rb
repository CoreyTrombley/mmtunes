class PlayersController < ApplicationController

  def index
    @user = current_user
    @songs = Song.all
  end

end
