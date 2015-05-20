
def sum_of_proc(i, each_proc, all_proc)
  result = 0
  (0..i).each {|n| result += each_proc.call(n)}
  all_proc.call(result)
end

def square_of_sums i
  sum_of_proc(
    i,
    lambda {|val| val},
    lambda {|val| val**2}
    )
end

def sum_of_squares i
  sum_of_proc(
    i,
    lambda {|val| val**2},
    lambda {|val| val}
    )
end

puts(square_of_sums(100) - sum_of_squares(100))
