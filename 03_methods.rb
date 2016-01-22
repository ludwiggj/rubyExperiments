class Boogy
    def initialize
        @dix = 15
    end

    def arbo
        puts "#{@dix} ha\n"
    end
end

# initializes an instance of Boogy
b = Boogy.new

# prints "15 ha"
b.arbo

# method/message name is given as a string
b.send("arbo")

# method/message name is given as a symbol
b.send(:arbo)

# methods can also be defined in the "top-level" scope, not inside any class. For example:

def say (something)
    puts something
end

say "Hello"
