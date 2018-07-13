require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = reverse[:name]
    "#{@reversed_name}"
  end
end
