require 'test/unit'
require 'rack/test'
require_relative '../app'

class ServerTest < Test::Unit::TestCase
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    def test_ping
        get '/ping'
        assert last_response.ok?
        assert_equal 'pong', last_response.body
    end

end

