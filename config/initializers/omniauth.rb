Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['UNBURYME_TWITTER_CONSUMER_KEY'], ENV['UNBURYME_TWITTER_CONSUMER_SECRET']
  
  #provider :facebook, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  #provider :google, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
