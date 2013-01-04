class PurchasesController < ApplicationController

  def create
    @purchase = Purchase.new
    @purchase.song = Song.find(params[:song_id])
    @purchase.user = current_user
    @purchase.price_paid = @purchase.song.price
    if @purchase.save
      purchaser = @purchase.user_id
      @user = User.find_by_id(purchaser)
      balance = @user.balance
      @user.balance = balance - @purchase.price_paid
      @user.save
      redirect_to player_path
    else
      render :players
    end
  end

end