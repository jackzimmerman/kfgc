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
  
  get '/petition' do
    erb :petition
  end  
  
  post '/results' do
    @firstname = fname(params[:my_first_name])
    @lastname = lname(params[:my_last_name])
    # @number = number(params[:my_number])
    # @address = address(params[:my_address])
    # @city = city(params[:my_city])
    # @state = state(params[:my_state])
    # @zip = zip(params[:my_zip])
    # @congressmanfn = cfname(params[:my_congressman_first])
    # @congressmanln = clname(params[:my_congressman_last])
    # @hvs1 = senatehouse1(params[:housesenate])
    # @hvs2 = senatehouse2(params[:housesenate])
    # @officeaddress = caddress(params[:congressman_address])
    # @ccity = ccity(params[:ccity])
    # @cstate = cstate(params[:cstate])
    # @czip = czip(params[:czip])
    
    
    
    
    erb :results
  end
end
