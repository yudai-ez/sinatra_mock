```
gem install bundler
git clone https://github.com/yudai-ez/sinatra_mock.git
cd sinatra_mock
bundle install --path vendor/bundle
bundle exec ruby app.rb
curl -X POST -H "Content-Type: application/json" -d '{ "trade_info": { "auction_id": "12345", "seller_id": "12345", "buyer_id": "12345" } }' http://127.0.0.1:4567/trade_info
```
