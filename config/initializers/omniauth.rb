Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["spotify_key"], ENV["spotify_secret"], scope: 'user-follow-read user-top-read playlist-read-private'
end