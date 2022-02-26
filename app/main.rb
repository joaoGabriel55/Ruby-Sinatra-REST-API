require 'sinatra'
require 'json'

before do
  content_type :json
end

get '/health-check' do
  { message: 'Is alive guys!', version: '1.0' }.to_json
end