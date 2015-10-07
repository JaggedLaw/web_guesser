ARGV << '-o' << '127.0.0.1'  # work around localhost issue
require 'sinatra'
require 'sinatra/reloader'

random_num = rand(100)

get '/' do
  "THE SECRET NUMBER is #{random_num}"
end
