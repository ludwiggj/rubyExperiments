def some_method(&block)
  puts block.class
  block.call
end

some_method do
  puts 2 + 2
end # => Proc
