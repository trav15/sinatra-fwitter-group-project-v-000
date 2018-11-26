class UsersController < ApplicationController
  get '/signup' do
    erb :'users/new'
  end

  post '/signup' do
    @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
    @user.save
    session[:user_id] = @user.id
    redirect to '/tweets'
  end


end
