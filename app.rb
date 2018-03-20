require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name'
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number'
    num = params[:number]
    "#{num^2}"
  end

  get '/say/:number/:phrase'
    num = params[:number]
    phrase = params[:phrase]
    num.times do
      "#{phrase}"
    end

  end

  get '/say/:word1/:word2/:word3/:word4/:word5'
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}"
  end

  get '/:operation/:number1/:number2'
    op = params[:operation]
    num1 = params[:number1]
    num2 = params[:number2]
    case op
    when 'add'
      "#{num1 + num2}"
    when 'divide'
      "#{num1 / num2}"
    when 'subtract'
      "#{num1 - num2}"
    when 'multiply'
      "#{num1 * num2}"
    end
  end
end
