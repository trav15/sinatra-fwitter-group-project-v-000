class TweetsController < ApplicationController
 get '/tweets/new' do
   erb :'tweets/new'
 end

 post '/tweets' do
   @title = params[:title]
   @content = params[:content]
 end

end
