class EventsController < ApplicationController
  def index
    respond_with Event.recent_first.visible_to(current_user).page(params[:page])
  end
end
