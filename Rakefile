require 'webrick'

task :default => ["cuke"]

task :cuke do
  
  # startup WEBRick in it's own thread so we can kill it later
  webrick = Thread.new do 
    server = WEBrick::HTTPServer.new(:Port => 4567, :DocumentRoot => "#{Dir.pwd}/source")
    server.start
  end
  
  # give WEBRick 10 seconds to start up
  sleep 10
  
  # run the cukes
  sh "jruby -S cucumber features" do |ok, result|
    puts "Cucumber failed. Status=#{result.exitstatus}" unless ok
  end
  
  # kill WEBRick
  webrick.kill
  
end