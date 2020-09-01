class ApplicationController < ActionController::Base
  # Devise authenticates the user and makes it available as `current_user`
  before_action :authenticate_user!
end
