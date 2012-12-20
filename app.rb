require 'sinatra/base'
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
    @menu_class="menu-item menu-active-item"
    mustache :index
  end

  get '/about' do
    @title = "About the Event | Modern Street Photo in Russia"
    @menu_class="menu-item menu-active-item"
    mustache :about

  end

  get '/photographers' do
    @title = "Photographers at the Event | Modern Street Photo in Russia"
    @menu_class="'menu-item menu-active-item'"
    mustache :photographers
  end


  # get '/nolayout' do
  #   content_type 'text/plain'
  #   mustache :nolayout, :layout => false
  # end
end
