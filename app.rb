require 'sinatra/base'
require 'sinatra/reloader'
require_relative "./lib/bookmarks.rb"

class Bookmarks < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader 
  end
    
  get "/test" do
    "test page"
  end 

  get "/" do
    erb :index
  end

  get "/bookmarks" do
    @bookmarks = BookmarksStorage.all
    erb :bookmarks
  end

  get "/bookmarks/new" do
    erb :"bookmarks/new"
  end

  post "/bookmarks" do
    BookmarksStorage.create(url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
