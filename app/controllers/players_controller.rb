class PlayersController < ApplicationController

  def index
    @user = current_user
    @song = Song.all
  end
end
