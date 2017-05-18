class SessionsController < ApplicationController
  def new
  end

  def create
    @shop_owner = ShopOwner.find_by(email: params[:email]).try(:authenticate, params[:password])
# put explanation
    return render action: 'new' unless @shop_owner

    #logged in, hooray
    session[:shop_owner_id] = @shop_owner.id
    redirect_to dashboard_path(shop_owner: @shop_owner.id)
  end
end
