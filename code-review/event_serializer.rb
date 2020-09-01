class EventSerializer < ActiveModelSerializers::Model
  attributes :type, :lock_name, :created_at

  def lock_name
    object.lock.name
  end

  def created_at
    object.created_at.iso8601
  end
end
