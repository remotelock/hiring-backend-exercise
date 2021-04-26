class Event < ActiveRecord::Base
  paginates_per 25

  belongs_to :user
  belongs_to :lock

  scope :recent_first, -> { order(created_at: :desc) }
  scope :visible_to, ->(user) { where(user: user) }
end
