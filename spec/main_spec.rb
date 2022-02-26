ENV['APP_ENV'] = 'test'

require_relative '../app/main.rb'
require 'json'
require 'rspec'
require 'rack/test'

RSpec.describe 'App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "health check is alive" do
    get '/health-check'

    expect(last_response).to be_ok
    expect(JSON.parse(last_response.body)).to eq({"message"=>"Is alive guys!", "version"=>"1.0"})
  end
end