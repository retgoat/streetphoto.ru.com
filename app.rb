require 'sinatra/base'
# require 'sinatra/r18n'
require 'mustache/sinatra'

class App < Sinatra::Base
  register Mustache::Sinatra
  require './views/layout'

  set :mustache, {
    :views     => './views/',
    :templates => './templates/'
  }
  set :static, true
  set :public, './public'

  get '/' do
    @title = "Modern Street Photo in Russia"
    mustache :index
  end

  get '/about' do
    @title = "About the Event | Modern Street Photo in Russia"
    mustache :about

  end

  get '/photographers' do
    @title = "Photographers at the Event | Modern Street Photo in Russia"
    mustache :photographers
  end
end
