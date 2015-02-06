module APN
  class Device

    include Mongoid::Document
    include Mongoid::Timestamps

    field :udid, :type => String
    field :device_info, :type => String

    index({ udid: 1 }, { unique: true, background: true })
    
    belongs_to :notification, :class_name => "APN::Notification", :inverse_of => :device
    
    embeds_many :subscriptions, :class_name => "APN::Subscription"
    
    validates_presence_of :udid
    validates_uniqueness_of :udid

  end
end