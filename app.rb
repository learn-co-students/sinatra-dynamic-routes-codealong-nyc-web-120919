require_relative 'config/environment'

class App < Sinatra::Base


  get '/hello' do
    "Hello World!"
  end
  get '/hellos' do 
    "I am now working"
  end 

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye' do 
    "Goodbye world"
  end 
  get "/goodbye/:name" do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end 

  get "/multiply/:num1/:num2" do 
      @final = params[:num1].to_i * params[:num2].to_i
      "#{@final}" 
  end 
end