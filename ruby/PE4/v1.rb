def isPalindrome num
  num.to_s == num.to_s.reverse
end

palindrome = 0

999.downto(100) {|i|
  i.downto(100) {|j|
    palindrome = (i * j) if isPalindrome(i * j) and (i * j) > palindrome
  }
}

puts palindrome
