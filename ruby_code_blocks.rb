#!/bin/ruby

def startApp
	puts "Welcome to the application"
	yield "Breaking News: "
	puts "Thank you for using our app"
end

startApp{|s| puts "#{s}The latest headline news are: blah blah blah"}


