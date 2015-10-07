ARGV << '-o' << '127.0.0.1'  # work around localhost issue

require 'sinatra'
get '/' do
  "Hello, World!"
end
