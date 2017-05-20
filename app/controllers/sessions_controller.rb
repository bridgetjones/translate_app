class SessionsController < ApplicationController
  def new
    redirect_to dashboard_path if current_shop_owner
  end

  def create
    @shop_owner = ShopOwner.find_by(email: params[:email]).try(:authenticate, params[:password])
    # put explanation
    return render action: 'new' unless @shop_owner

    #logged in, hooray
    session[:shop_owner_id] = @shop_owner.id
    redirect_to dashboard_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
