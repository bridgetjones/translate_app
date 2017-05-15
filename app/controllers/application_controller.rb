class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  helper_method :current_shop_owner

  def current_shop_owner
    @current_shop_owner ||= ShopOwner.find_by(id: session[:shop_owner_id])
  end

  def require_logged_in
    return true if current_shop_owner

    return redirect_to root_path
  end

  #
  # require 'googleauth'
  # scopes =  ['https://www.googleapis.com/auth/cloud-platform', 'https://www.googleapis.com/auth/devstorage.read_only']
  # authorization = Google::Auth.get_application_default(scopes)
  #
  # require "google/apis/storage_v1"
  # storage = Google::Apis::StorageV1::StorageService.new
  # storage.authorization = authorization

end

#
#   helper_method :current_user
#
#   def current_user
#     @current_user ||= User.find_by(id: session[:user_id])
#   end
#
#   def require_logged_in
#   return true if current_user
#
#   return redirect_to root_path
#   end
# end
#
# end
