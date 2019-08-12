#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'byebug'
require 'sinatra/activerecord'

set :database_file, "config/database.yml"
class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

get '/' do
  @barbers = Barber.all
	erb :index
end