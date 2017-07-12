require 'sinatra'
require 'date'

get '/' do
    "Hello World!"
end

get '/bye' do
    "Good bye"
end

get '/hello/:name' do
    "Hello #{params['name']} ^^"
end

set(:probability) { |value| condition { rand <= value } }
get '/win_a_car', :probability => 0.1 do
  "You Win ! at #{Time.now}"
end
get '/win_a_car' do
  "You Lose ! at #{Time.now}"
end
