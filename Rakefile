require 'rubygems' 

ENV['RACK_ENV'] ||= 'development'

namespace :api do
    task :start do
        puts 'Starting Server...'
        system "bundle exec thin -s 1 -R config.ru start"
        puts 'Server has been started successfully!'
    end

    task :stop do
        puts 'Stopping Server...'
        pids = File.join(File.dirname(__FILE__), 'tmp/pids')
        # If found multiple instances
        if File.directory?(pids)
            Dir.new(pids).each do |file|
                prefix = file.to_s
                if prefix[0, 4] == 'thin'
                    puts "Stopping the server on port #{file[/\d+/]}..."
                    system "bundle exec thin stop -Ptmp/pids/#{file}"
                end
            end
        end
        puts 'Server has been Stopped successfully!'
    end
end

