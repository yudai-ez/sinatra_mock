require 'sinatra'
require 'json'
require 'pp'

post '/trade_info', provides: :json do
  puts JSON.parse(request.body.read)
  status 201
  { id: 12345 }.to_json
end
