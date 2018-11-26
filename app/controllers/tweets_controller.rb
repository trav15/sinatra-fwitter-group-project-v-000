class TweetsController < ApplicationController
  attr_reader :content, :user_id

  get '/tweets' do
    erb :'tweets/show'
  end

  get '/tweets/new' do
   erb :'tweets/new'
  end

  post '/tweets' do
   @content = params[:content]
   redirect '/tweets'
  end

  get '/tweets/:id' do
    @tweet = Tweet.find_by_id(params[:id])
    erb :'tweets/show'
  end

end
