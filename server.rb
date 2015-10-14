require 'sinatra'
require 'httparty'
require 'nokogiri'
require './stockpicker.rb'

# http://localhost:4567/?stock=goog
# params = stock: google
#

get '/' do
  stockpicker(params["stock"] )
end
