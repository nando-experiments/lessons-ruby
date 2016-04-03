# Sinatra | http://www.sinatrarb.com/
require 'sinatra'
require "sinatra/reloader" if development?
require 'sass'
require 'erb'

class App < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  configure do
    # Set your Google Analytics ID here if you have one:
    # set :google_analytics_id, 'UA-12345678-1'

    set :layouts_dir, 'views/_layouts'
    set :partials_dir, 'views/_partials'
  end

  helpers do
    def show_404
      status 404
      @page_name = '404'
      @page_title = 'Oops error 404'
      erb :'404', :layout => :main,
                  :layout_options => {:views => settings.layouts_dir}
    end
  end

  not_found do
    show_404
  end

  # Redirect any URLs without a trailing slash to the version with.
  get %r{(/.*[^\/])$} do
    redirect "#{params[:captures].first}/"
  end

  get '/' do
    @page_name = 'home'
    # @page_title = 'Home page'
    erb :index,
      :layout => :main,
      :layout_options => {:views => settings.layouts_dir}
  end

end
