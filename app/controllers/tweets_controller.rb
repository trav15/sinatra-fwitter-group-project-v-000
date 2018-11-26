class TweetsController < ApplicationController
  attr_reader :content, :user_id

  get '/tweets/' do
    # @tweets = Tweet.all
    erb :'tweets/tweets'
  end

  get '/tweets/new' do
   erb :'tweets/new'
  end

  post '/tweets' do
   @tweet = Tweet.create(content: params["content"])
   redirect to "/tweets/#{@tweet.id}"
  end

  get '/tweets/:id' do
    @tweet = Tweet.find_by_id(params[:id])
    erb :'tweets/show'
  end

end
