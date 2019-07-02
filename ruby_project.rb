#!/bin/ruby
# Simple conversion tool
#
#

factors = [
	{ :unit => "gram", :gFactor => 1, :oFactor => 1  },
	{ :unit => "kgram", :gFactor => 1000, :oFactor => 0.001 },
	{ :unit => "mgram", :gFactor => 0.001, :oFactor => 1000 },
	{ :unit => "ounce", :gFactor => 28.3495, :oFactor => 0.035274 },
	{ :unit => "pound", :gFactor => 453.592, :oFactor => 0.002205 }
]

def clear
	Gem.win_platform? ? (system "cls") : (system "clear")
end

clear
# Get user input for old unit
puts "Available units: mgram, gram, kgram, ounce, pound [or exit]"
puts "What unit would you like to convert from?: "
unitF = gets.chomp.to_s
exit if unitF == "" || unitF == "exit"

# Get user input for new unit
puts "What unit would you like to convert to?: "
unitT = gets.chomp.to_s
exit if unitT == "" || unitT == "exit"

# Get user input for value of conversion
puts "What is the value to convert? "
value = gets.to_f
exit if value == "" || value == 0

# Find hash key that matches input
fFactor = factors.detect {|f| f[:unit] == unitF}
tFactor = factors.detect {|f| f[:unit] == unitT}

# Print operation
puts "For #{fFactor[:unit]} to #{tFactor[:unit]}"
toGrams = value * fFactor[:gFactor]
toResult = toGrams * tFactor[:oFactor]
puts " #{value} #{fFactor[:unit]} approximates #{toResult} #{tFactor[:unit]} "





