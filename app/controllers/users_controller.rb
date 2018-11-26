class UsersController < ApplicationController
  get '/signup' do
    erb :'users/new.erb'
  end

end
