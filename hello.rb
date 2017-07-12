require 'sinatra'

get '/' do
    "Hello World!"
end

get '/bye' do
    "Good bye"
end

get '/hello/:name' do
    "Hello #{params['name']} ^^"
end
