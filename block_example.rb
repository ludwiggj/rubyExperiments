def some_method
  yield if block_given?
end

some_method do
  puts 1 + 1
end # => 2
