class Jog
  include Mongoid::Document

  embedded_in :user

  field :jog_started_at,   type: Time
  field :jog_ended_at,     type: Time
  field :jog_distance_ran, type: Float    # in Meters
  field :entry_active,     type: Boolean, default: true

  validates_presence_of :jog_started_at
  validates_presence_of :user
end
