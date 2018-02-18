require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  get '/aboutus' do
    erb :aboutus
  end
  
  get '/index' do
    erb :index
  end  
  
  get '/quiz2' do
    erb :quiz2
  end  
  
  get '/jack' do
    erb :jack
  end
  
  get '/letter' do
    erb :letter
  end
  
  post '/results' do
    @name = name(params[:my_name])
    @jimmy = email(params[:my_email])
    @number = number(params[:my_number])
    @zip = zip(params[:my_zip])
    
    erb :results
  end
end
