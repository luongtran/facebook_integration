#require 'openid/store/filesystem' 
Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  #provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :facebook, '479388308748402', '185fe85120c05103bbbe5520f1f2bf36'
  
  OmniAuth.config.logger = Logger.new(STDOUT)
  OmniAuth.logger.progname = "omniauth"
  # provider :openid, OpenID::Store::Filesystem.new('/tmp') 
  # use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => 'yahoo', :identifier => 'yahoo.com' 
  # use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
end