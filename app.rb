require 'sinatra/base'
require 'json'
require 'pp'

class App < Sinatra::Base

  before do
    @params = JSON.parse(request.body.read)
  end

  def created
    status 201
    { id: 12345 }.to_json
  end

  def error_500
    status 500
    { message: 500 }.to_json
  end

  post '/trade_info', provides: :json do
    if @params.has_key?("trade_info") and @params["trade_info"].has_key?("auction_id") and @params["trade_info"].has_key?("seller_id") and @params["trade_info"].has_key?("buyer_id")
      created
    else
      error_500
    end
  end
end
