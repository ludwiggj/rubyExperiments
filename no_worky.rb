def some_method
  def return_function
  end
end

some_method # => nil
x = some_method
x() # => NoMethodError: undefined method `x' for main:Object
