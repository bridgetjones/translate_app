class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #
  # require 'googleauth'
  # scopes =  ['https://www.googleapis.com/auth/cloud-platform', 'https://www.googleapis.com/auth/devstorage.read_only']
  # authorization = Google::Auth.get_application_default(scopes)
  #
  # require "google/apis/storage_v1"
  # storage = Google::Apis::StorageV1::StorageService.new
  # storage.authorization = authorization
end
