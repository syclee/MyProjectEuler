require 'Prime'

primeGenerator = Prime::Generator23.new

number = 600851475143

largestPrimeFactor = 0

# first prime factor to be divide into another prime number
# is the biggest prime factor
begin
  prime = primeGenerator.next

  if number % prime == 0
    factor = number / prime
    largestPrimeFactor = factor if Prime.prime? factor
  end

end while largestPrimeFactor == 0

p largestPrimeFactor
