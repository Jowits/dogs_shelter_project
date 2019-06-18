require_relative '../config/environment.rb'

Dir["../lib/model" "*.rb"].each{|file| require file}

cli = CommandLineInterface.new
cli.run

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

<<<<<<< HEAD
cli.welcome
 #leave this here to ensure binding.pry isn't the last line
=======
# binding.pry
# 0 #leave this here to ensure binding.pry isn't the last line
>>>>>>> ff8c709ab4e53ee3989adf494f749d82c9fcd69a
