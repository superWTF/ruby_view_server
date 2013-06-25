require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

product = x*2
template = ERB.new "Twice the value of x is: <%= product %>"
puts template.result(binding)

drinks = %w{Water Scotch Cocoa}
number = 1
drinks.each do |drink|

template = ERB.new "Drink <%= number %>: <%= drink %>"
puts template.result(binding)

number = number + 1
end