def some_method
  yield
end

some_method &proc { puts "hello world!" }
some_method proc { puts "hello world!" } #  `some_method': wrong number of arguments (1 for 0) (ArgumentError)
