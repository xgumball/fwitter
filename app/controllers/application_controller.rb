require './config/environment'
require './app/models/tweet'
class ApplicationController < Sinatra::Base

    
    configure do 
        set :public_folder, 'public'
        set :views, 'app/views'
    end
    
    get '/' do
        Tweet.new("taylorswift13", "This is my first Fweet!")
        Tweet.new("alberteinstein", "Everything should be made as simple as possible, but not simpler.")
        Tweet.new("RealBobDylan", "Don't think twice, it's alright")
        @tweets = Tweet.all
        erb :index
    end



end