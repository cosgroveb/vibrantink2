#!/usr/bin/env ruby
require 'JSON'

lines = File.readlines('palette.x256')
lines.each do |ln|
  if ln =~ /^(\d+)/
    printf("\x1b[48;5;%sm%3d\e[0m ",$1, $1)
  elsif ln =~ /(\w+)/
    puts "\n\n" + $1
  end
end
puts ''

json = File.read('colors256.json')
colors = JSON.parse(json)
color = 'none'
level = 100

lines.each do |ln|
  if ln =~ /^(\d+)/
    # almost_black = ["#1c1c1c", 234, "black"]
    puts %Q(#{color}_#{level} = [ "#{colors[$1.to_i]["hexString"]}", #{$1}, "#{color}"])
    # puts [color + '-' + level.to_s, $1, colors[$1.to_i]["hexString"]].join("\t")
    level += 1
  elsif ln =~ /(\w+)/
    color = $1
    level = 1
  end
end
