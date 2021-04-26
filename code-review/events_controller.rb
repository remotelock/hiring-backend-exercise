class EventsController < ApplicationController
  def index
    respond_with cacheevents
  end

  def cacheevents
    Rails.cache.fetch('EventsController/index', expires_in: 15.minutes) do
      Event.recent_first.visible_to(current_user).page(params[:page])
    end
  end
end
