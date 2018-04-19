require 'sinatra'
require 'json'

class IndexerAPI < Sinatra::Base

    get '/ping' do
        'pong'
    end

    post '/indexit' do

    end

    get '/indexfor' do

    end

    get '/indexes' do
        
    end

end