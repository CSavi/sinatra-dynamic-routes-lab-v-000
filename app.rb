require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @product = params[:number].to_i.size * params[:phrase]
    "#{@product}"
  end
end
