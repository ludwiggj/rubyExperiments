def gen_times(factor)
    return Proc.new {|n| n*factor }
end

times3 = gen_times(3)
times5 = gen_times(5)

puts times3.call(12)               #=> 36
puts times5.call(5)                #=> 25
puts times3.call(times5.call(4))   #=> 60

def foo (a, b)
    a.call(b)
end

putser = Proc.new {|x| puts x}
foo(putser, 34)
