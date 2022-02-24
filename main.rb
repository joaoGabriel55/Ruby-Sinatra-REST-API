require 'sinatra'
require 'json'

before do
  content_type :json
end

get '/health-check' do
  [{ message: 'Is alive!' }].to_json
end