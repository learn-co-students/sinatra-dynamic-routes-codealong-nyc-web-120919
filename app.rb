require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get '/hello/:user_name' do
    @user_name = params[:user_name]
    "Hello #{@user_name}!"
  end

  get '/goodbye' do 
    "Goodbye!"
  end 

  # Code your final two routes here:
  get '/goodbye/:name' do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do 
    @result = params[:num1].to_i * params[:num2].to_i
    "#{@result}"
  end

end