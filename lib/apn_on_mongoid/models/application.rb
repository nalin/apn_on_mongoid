module APN
  class Application
    
    include Mongoid::Document
    include Mongoid::Timestamps

    #field :name
    field :appname
    field :app_identifier
    field :certificate

    index :app_identifier, :unique => true, :background => true
    
    # references_many :subscriptions, :class_name => "APN::Subscription", :inverse_of => :application
    
  end
end
