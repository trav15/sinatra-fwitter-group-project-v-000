class TweetsController < ApplicationController
  get '/tweets' do
    erb :'tweets/show'
  end

  get '/tweets/new' do
   erb :'tweets/new'
  end

  post '/tweets' do
   @title = params[:title]
   @content = params[:content]
   redirect '/tweets'
  end

end
