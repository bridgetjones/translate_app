class SessionsController < ApplicationController
  def new
  end

  def create
    @shop_owner = ShopOwner.
    find_by(email: params[:email]).
    try(:authenticate, params[:password])

    return render action: 'new' unless @shop_owner

    #logged in, hooray
    session[:shop_owner_id] = @shop_owner.id
    redirect_to notes_path
  end
end
