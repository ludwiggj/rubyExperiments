say = lambda {|something| puts something}

say.call("Hello")

# same effect. The [] construct is a synonym to call in context of Proc 
say["Hello"]

# Two differences between lambda and Proc.new.
#
# 1) The way returns are handled.
#
# A return from Proc.new returns from the enclosing method 

def try_ret_procnew
    ret = Proc.new { return "Baaam" }
    ret.call
    "This is not reached"
end

# prints "Baaam"
puts try_ret_procnew

# While return from lambda acts more conventionally, returning to it's caller:

def try_ret_lambda
    ret = lambda { return "Baaam" }
    ret.call
    "This is printed"
end

# prints "This is printed"
puts try_ret_lambda

# 2) Argument checking. lambda ensures that resulting Proc objects check the number of parameters passed when called:

lamb = lambda {|x, y| puts x + y}
pnew = Proc.new {|x, y| puts x + y}

# works fine, printing 6
pnew.call(2, 4, 11)

# throws an ArgumentError
lamb.call(2, 4, 11)
