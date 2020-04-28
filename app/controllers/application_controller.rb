class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/new' do 
    erb :new 
  end   
  
  get '/show' do 
    erb :show
  end   
  
  get '/edit' do 
    erb :edit 
  end   
  
  get '/index' do 
    @recipes = Recipe.all 
    erb :index
  end   

end
