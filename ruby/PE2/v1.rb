a,b,fib = 1,1,0
sum = 0

begin
  fib = a + b
  a,b = b, a + b
  sum += fib if fib % 2 == 0
end while fib < 4_000_000

puts fib
puts sum
