def do_twice
    yield 
    yield
end

do_twice {puts "Hola"}

# This can be implemented in a more explicit way, using a Proc argument.
# This is equivalent to the previous example, but using blocks with yield is cleaner, and better
# optimized since only one block is passed to the method, for sure.

def do_twice(what)
    what.call
    what.call
end

do_twice lambda {puts "Hola"}

# Using the Proc approach, any amount of code blocks can be passed:


def do_twice(what1, what2, what3)
    2.times do
        what1.call
        what2.call
        what3.call
    end
end

do_twice(lambda {print "Hola, "},
         lambda {print "querido "},
         lambda {print "amigo\n"})

# It is important to note that many people frown at passing blocks, and prefer explicit Procs instead.
# Their rationale is that a block argument is implicit, and one has to look through the whole code of
# the method to see if there are any calls to yield there, while a Proc is explicit and can be
# immediately spotted in the argument list. While it's simply a matter of taste, understanding both
# approaches is vital. 
