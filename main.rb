require 'sinatra'
require 'json'

before do
  content_type :json
end

get '/health-check' do
  [{ message: 'Is alive!', version: '1.0' }].to_json
end