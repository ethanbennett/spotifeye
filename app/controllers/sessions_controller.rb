class SessionsController < ApplicationController
  def create
    response = Faraday.post("https://spotify.com/login/oauth/authorize?client_secret=#{ENV["spotify_secret"]}&;code=#{params[:code]}&;client_id=#{ENV["spotify_id"]}")
    token = response.body.split(/\W+/)[1]
    # user_data = Faraday.get("https://api.spotify.com/user?access_token=#{token}")
    # data = JSON.parse(user_data.body)
    binding.pry
  end
end