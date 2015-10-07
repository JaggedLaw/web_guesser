ARGV << '-o' << '127.0.0.1'  # work around localhost issue
require 'sinatra'
require 'sinatra/reloader'

SECRET_NUM = rand(100)

def check_guess(guess_num)
  difference = (SECRET_NUM - guess_num).abs
  if guess_num > SECRET_NUM
    if difference > 5
      message = "Way too high!"
    else
      message = "Too high"
    end
  elsif guess_num < SECRET_NUM
    if difference > 5
      message = "Way too low!"
    else
      message = "Too low!"
    end
  else
    message = "You got it! The secret number is #{SECRET_NUM}"
  end
  message
end

get '/' do
  guess_num = params["guess"].to_i
  message = check_guess(guess_num)
  erb :index, :locals => {:number => SECRET_NUM, :message => message}
end
