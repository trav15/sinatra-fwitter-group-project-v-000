class UsersController < ApplicationController
  get '/signup' do
    erb :'users/new'
  end

  get '/test' do
    "TESTING"
  end

end
