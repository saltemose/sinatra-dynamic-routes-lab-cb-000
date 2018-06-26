require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    reversename = params[:name].reverse
    "#{reversename}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    square = num * num
    "#{square}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    phrases = []
    num.times do
      phrases << phrase
    end
    phrases.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get ''

end
