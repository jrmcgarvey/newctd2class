require 'sinatra'
require 'sinatra/activerecord'
require './models.rb'

set :database, "sqlite3:sinatra_ar.sqlite3"