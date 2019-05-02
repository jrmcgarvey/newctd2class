# app.rb
require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:sinatra_ar.sqlite3"

require './models'

get '/' do
  @users = User.all
  erb :index
end