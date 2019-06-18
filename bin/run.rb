require_relative '../config/environment.rb'

Dir["../lib/model" "*.rb"].each{|file| require file}

cli = CommandLineInterface.new
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cli.welcome
 #leave this here to ensure binding.pry isn't the last line