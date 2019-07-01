#!/bin/ruby

puts "Hello World!"
print "With print, no paren\n"
print("Print with paren\n")

myname="Chris"
#print "My name is #{myname}\n"
printf "My name is %s\n", myname

# Python quotes
# print("Her pet's name is Kenzy")

puts 'Her pet\'s name is Kenzy'
puts %q{Her pet's name is Kenzy and she loves "Drawing"}

