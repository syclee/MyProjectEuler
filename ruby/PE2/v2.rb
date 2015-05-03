# from forum there is a pattern for fibonacci numbers being even
#
# This may be a small improvement.  The Fibonacci series is:
#
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610...
#
# Now, replacing an odd number with O and an even with E, we get:
#
# O, O, E, O, O, E, O, O, E, O, O, E, O, O, E...
#
# And so each third number is even.  We don't need to calculate the odd numbers.
# Starting from an two odd terms x, y, the series is:
#
# x, y, x + y, x + 2y, 2x + 3y, 3x + 5y
#
# so we're not trying to find fib numbers anymore, we're just
# applying the pattern in a loop


a,b,sum = 1,1,0

begin
  sum += (a + b)
  a,b = a + 2*b, 2*a + 3*b
end while sum < 4_000_000

puts sum
