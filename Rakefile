require 'jasmine'
require 'webrick'

load 'jasmine/tasks/jasmine.rake'

task :default => ["jasmine:ci", "cuke"]

task :cuke do
  
  # startup WEBRick in it's own thread so we can kill it later
  server = WEBrick::HTTPServer.new(:Port => 4567, :DocumentRoot => "#{Dir.pwd}/source")
  webrick = Thread.new(server) do |s| 
    s.start
  end
  
  # run the cukes
  sh "jruby -S cucumber features" do |ok, result|
    puts "Cucumber failed. Status=#{result.exitstatus}" unless ok
  end
  
  # kill WEBRick
  server.stop
  webrick.join 10
  
end