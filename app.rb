require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    sqrt = params[:number].to_i ** 2
    "#{sqrt.to_s}"
  end

  get '/say/:number/:phrase' do
    string = ""
    phrase = params[:phrase]
    params[:number].to_i.times {|i| string += phrase}
    "#{string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{string}"
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      string = params[:number1].to_i + params[:number2].to_i
      return string.to_s
    elsif params[:operation] == 'subtract'
      string = params[:number1].to_i - params[:number2].to_i
      return string.to_s
    elsif params[:operation] == 'multiply'
      string = params[:number1].to_i * params[:number2].to_i
      return string.to_s
    elsif params[:operation] == 'divide'
      string = params[:number1].to_i / params[:number2].to_i
      return string.to_s
    end
  end

end