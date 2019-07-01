#!/bin/ruby

usernames=['jdoe','peter','mary','bob']

for u in usernames
	puts u
end

usernames.each do |u|
	puts u
end

usernames.each {|u| puts u}

for i in usernames 
	puts "Hello #{i}"
end
