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
    number = params[:number].to_i
    @product = params[:phrase] * number
    "#{@product}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string_1 = params[:word1]
    @string_2 = params[:word2]
    @string_3 = params[:word3]
    @string_4 = params[:word4]
    @string_5 = params[:word5]
    "#{@string_1} #{@string_2} #{@string_3} #{@string_4} #{@string_5}"
  end
end
