#!/bin/ruby

#usernames=['jdoe','peter','mary','bob']

#Hash
usernames = [
	{:name => "jdoe",:age => 31,:job => "DevOps Engineer"},
	{:name => "linda",:age => 25,:job => "SysAdmin"},
	{:name => "bob",:age => 29,:job => "Developer"},
	{:name => "mark",:age => 35,:job => "Tester"},
]

usernames.each do |u|
	puts "#{u[:name]} : #{u[:age]}"
end

