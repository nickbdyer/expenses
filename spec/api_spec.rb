require 'spec_helper'
require 'rack/test'

describe 'server routes' do 

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context 'A get request to the root' do

    it 'returns an ok status' do
      get '/'
      expect(last_response).to be_ok
    end
  end
end
