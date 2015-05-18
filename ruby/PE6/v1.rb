def sum_of_squares i
  result = 0
  (0..i).each {|n| result += n**2}
  result
end

def square_of_sums i
  result = 0
  (0..i).each {|n| result += n}
  result**2
end

puts(square_of_sums(100) - sum_of_squares(100))
