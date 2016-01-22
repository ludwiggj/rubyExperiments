# a naked block can't live in Ruby
# this is a compilation error !

# {puts "hello"}

# now it's alive, having been converted
# to a Proc !
pr = lambda {puts "hello"}

pr.call

# Passing a block to a method

10.times do |i|
    print "#{i} "
end

puts

numbers = [1, 2, 5, 6, 9, 21]

numbers.each do |x|
    puts "#{x} is " + (x >= 3 ? "many" : "few")
end

squares = numbers.map {|x| x * x}

squares.each do |sq|
    print "#{sq} "
end
