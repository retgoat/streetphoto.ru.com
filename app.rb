require 'sinatra/base'
require 'sinatra/r18n'
require 'mustache/sinatra'

class App < Sinatra::Base
  register Mustache::Sinatra
  register Sinatra::R18n
  set :root, File.dirname(__FILE__)
  require './views/layout'

  set :mustache, {
    :views     => './views/',
    :templates => './templates/'
  }
  
  set :static, true
  set :public, './public'

  get '/' do
    mustache :index
  end

  get '/about' do
    mustache :about

  end

  get '/photographers' do
    mustache :photographers
  end

  before do
    session[:locale] = ENV['APP_LANG']
    @t = t
    @path_info = request.path_info
  end
end
