module APN
  class Application
    
    include Mongoid::Document
    include Mongoid::Timestamps

    #field :name
    field :appname, :type => String
    field :app_identifier, :type => String
    field :certificate, :type => String

    index({ app_identifier: 1 }, { unique: true, background: true })
    
    # references_many :subscriptions, :class_name => "APN::Subscription", :inverse_of => :application
    
  end
end
