#!/bin/ruby

#Modules
require "./myFunctions"
require "json"
MyFunctions.sayHello
content = File.read("file.json")
info = JSON.parse(content)
puts info["name"]

